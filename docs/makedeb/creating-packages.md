makedeb creates packages via the PKGBUILD [^1] package format.

PKGBUILDs are just Bash scripts that define variables and functions that tell makedeb how to build a package.

A basic PKGBUILD would look like this:

```sh
# Maintainer: Foo Bar <foobar@example.com>
pkgname=hello-world
pkgver=1.0.0
pkgrel=1
arch=('any')
depends=('bash')

source=("https://example.com")
sha256sums=('SKIP')

package() {
  echo "#!/usr/bin/env bash" > "${pkgdir}/usr/bin/${pkgname}"
  echo "echo 'Hello world!'" >> "${pkgdir}/usr/bin/${pkgname}"
  chmod 755 "${pkgdir}/usr/bin/${pkgname}"
}
```

You could then run `makedeb -si`, which would do the following:

- Make sure all needed build dependencies are installed.
- Build the package.
- Install the package.

To get a more in-depth look on how to create a PKGBUILD, look at the full PKGBUILD specification [^1].

[^1]: See [pkgbuild-specification/variables](/makedeb/pkgbuild-specification/variables) and [pkgbuild-specification/functions](/makedeb/pkgbuild-specification/functions).
