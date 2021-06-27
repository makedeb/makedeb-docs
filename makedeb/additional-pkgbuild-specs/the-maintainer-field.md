- The `Maintainer` field inside the built package is taken from the Maintainer comment inside the PKGBUILD. For example, consider this build file:

```sh
# Maintainer: Foo Bar <foobar@example.com>
# Maintainer: Billy Joe <billyjoe@example.com>

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

In this example, the maintainer set in the built `.deb` package would be as so:

```
Maintainer: Foo Bar <foobar@example.com>, Billy Joe <billyjoe@example.com>
```

{% hint style="info" %}
More maintainers in the built package can be specified with additional maintainer comment lines.
{% endhint %}
