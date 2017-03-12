all:

install:
	install ./autoinstall.sh /usr/sbin/autoinstall.sh
	install ./autoinstall.service /etc/systemd/system/autoinstall.service

test:
	prove -v -r t/*.bats

build:
