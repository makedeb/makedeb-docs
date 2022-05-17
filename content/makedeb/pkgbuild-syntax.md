---
title: "PKGBUILD Syntax"
draft: false
weight: 1
---

makedeb creates packages via the PKGBUILD package format. This is heavily influenced by the [PKGBUILD format on Arch Linux](https://wiki.archlinux.org/title/PKGBUILD), with tweaks and additions to better fit into the packaging ecosystem of Debian and Ubuntu.

PKGBUILDs are just Bash scripts that define variables and functions that tell makedeb how to build a package.

An example PKGBUILD that showcases common options is shown below. Some variables can take extra forms (such as with distro-specific variables). For more information, run `man PKGBUILD` on a machine where makedeb is installed.

```sh
# Maintainer: Your Name <foobar@example.com>
pkgname=NAME
pkgver=VERSION
pkgrel=1
pkgdesc=''
arch=()
depends=()
focal_depends=()
makedepends=()
makedepends_x86_64=()
checkdepends=()
optdepends=()
focal_optdepends_x86_64=()
provides=()
conflicts=()
replaces=()
preinst=''
postinst=''
prerm=''
postrm=''
backup=()
options=()
license=()
url=''

source=()
sha256sums=()
noextract=()

prepare() {
    cd "${pkgname}-${pkgver}/"
    git submodule init
}

build() {
    cd "${pkgname}-${pkgver}/"
    make
}

package() {
    cd "${pkgname}-${pkgver}/"
    make DESTDIR="${pkgdir}/" install
}

# vim: set sw=4 expandtab:
```
