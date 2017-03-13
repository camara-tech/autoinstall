all:

install:
	install autoinstall.sh ${DESTDIR}/usr/sbin/autoinstall.sh
	install autoinstall.service ${DESTDIR}/etc/systemd/system/autoinstall.service

test:
	prove -v -r t/*.bats

build:
