makedeb tries to stay as close to the normal PKGBUILD specification as possible.

Despite this, there are a few things that have been modified, either out of necessity or convenience.

The following additional specifications are placed on PKGBUILDs when building with makedeb:

- Package version cannot start with a letter. This is against Debian's [package specification](https://www.debian.org/doc/debian-policy/ch-controlfields.html#version), and is thus unsupported.

- The `Maintainer` field inside the built package is taken from the Maintainer comment in the PKGBUILD. For example, consider this build file:

```sh
# Maintainer: Foo Bar <foobar@example.com>

pkgname=foo
pkgrel=1
pkgver=1
pkgdesc="bar"
arch=('any')
package() {
    mkdir -p "${pkgdir}/usr/share/foobar/"
    echo "foobar" > "${pkgdir}/usr/share/foobar/motd"
}
```

The maintainer set in the built .deb package would be set to `Maintainer: Foo Bar <foobar@example.com>`.

More maintainers in the built package can be specified with additional `# Maintainer` lines.
