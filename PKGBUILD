# Maintainer: Antoni Kepinski <hello[at]akepinski[dot]me>
pkgname=archfetch
pkgver=1.0.4
pkgrel=7
pkgdesc="Neofetch, but simplified. For Arch Linux."
url="https://github.com/xxczaki/archfetch/"
arch=('i686' 'x86_64')
license=('MIT')
makedepens=('git')
_gitroot="git://github.com/xxczaki/archfetch.git"
_gitname="archfetch"

package() {
	cd "$srcdir"
	if [ -d $_gitname ] ; then
 	  cd $_gitname && git pull origin
	else
  	  git clone $_gitroot $_gitname
        fi
	sudo install -Dm755 archfetch "${PKG}/usr/bin/archfetch"
	
	cd "${PKGMK_SOURCE_DIR}"

	if cd "${pkgname}"; then
		git fetch -q
		git reset --hard origin/master
	else
		git clone ${_gitroot} ${_gitname}
		cd "${pkgname}"
	fi

	sudo install -Dm755 archfetch "${PKG}/usr/bin/archfetch"
}

