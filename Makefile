build:
	mkdir -p gokay/DEBIAN
	mkdir -p gokay/usr/bin
	echo "Package:hello" > gokay/DEBIAN/control
	echo "Version:$(VERSION)" >> gokay/DEBIAN/control 
	echo "Architecture :amd64" >> gokay/DEBIAN/control 
	echo "Maintainer:Gokay " >> gokay/DEBIAN/control
	echo "Description:Test" >> gokay/DEBIAN/control
	g++ Hello.cpp 
	mv a.out hello
	cp hello gokay/usr/bin/
	dpkg-deb --build gokay

test_deb:
	apt install ./gokay.deb
	hello

docker_build:
