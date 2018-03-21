# Maintainer: Antoni Kepinski <hello[at]akepinski[dot]me>
pkgname=archfetch
pkgver=1.0.0
pkgrel=1
pkgdesc="Neofetch, but simplified. For Arch Linux."
url="https://github.com/xxczaki/archfetch/"
arch=('i686' 'x86_64')
license=('MIT')
depends=()
makedepens=('git')
source=()

package() {
	cd "${PKGMK_SOURCE_DIR}"

	if cd "${pkgname}"; then
		git fetch -q
		git reset --hard origin/master
	else
		git clone https://github.com/xxczaki/archfetch "${pkgname}"
		cd "${pkgname}"
	fi

	install -Dm755 archfetch "${PKG}/usr/bin/archfetch"
}
