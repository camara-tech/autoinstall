all:

install:
	[ -e ${DESTDIR}/usr/sbin ] || mkdir -p /usr/sbin
	[ -e ${DESTDIR}/etc/systemd/system ] || mkdir -p /etc/systemd/system
	install autoinstall.sh ${DESTDIR}/usr/sbin/autoinstall.sh
	install autoinstall.service ${DESTDIR}/etc/systemd/system/autoinstall.service

test:
	prove -v -r t/*.bats

build:
