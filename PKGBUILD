# Maintainer: Jonathan Camara  <jonathan@jonathancamara.com>
pkgname=autoinstall # '-bzr', '-git', '-hg' or '-svn'
pkgver=1.0.0
pkgrel=1
pkgdesc="autoinstall based on kernel parameters"
arch=('any')
url="https://jonathancamara.com"
license=('GPL')
groups=()
depends=('bash')
makedepends=('git' 'make') # 'bzr', 'git', 'mercurial' or 'subversion'
checkdepends=('perl' 'bash-bats')
provides=("${pkgname%-VCS}")
conflicts=("${pkgname%-VCS}")
replaces=()
backup=()
options=()
install=
source=("git+ssh://git@github.com/italy-portugal/autoinstall.git#tag=${pkgver}")
noextract=()
md5sums=('SKIP')

# Please refer to the 'USING VCS SOURCES' section of the PKGBUILD man page for
# a description of each element in the source array.

pkgver() {
	cd "$srcdir/${pkgname}"

# Git, tags available
	printf "%s" "$(git describe --long | sed 's/\([^-]*-\)g/r\1/;s/-/./g')"

# Git, no tags available
	printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"

}

build() {
	cd "$srcdir/${pkgname}"
}

check() {
	cd "$srcdir/${pkgname}"
	make -k test
}

package() {
	cd "$srcdir/${pkgname}"
	make DESTDIR="$pkgdir/" install
}
