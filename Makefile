all:

install:
	cp ./autoinstall.sh /usr/sbin/autoinstall.sh
	cp ./autoinstall.service /etc/systemd/system/autoinstall.service

test:
	prove -v -r t/*.bats

build:
