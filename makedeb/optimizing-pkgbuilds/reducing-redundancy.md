When repeating package relationships across a PKGBUILD (e.g. from needing to use [distribution-specific relationships](/makedeb/additional-pkgbuild-specs/distribution-specific-relationships)), you can repeat the data used inside of previously set variables.

For example, consider the following PKGBUILD excerpt:

```sh
depends=('package1' 'package2' 'package3')
buster_depends=('package1' 'package2' 'package3' 'package4')
groovy_depends=('package1' 'package2' 'package3' 'package5')
```

This could be rewritten like so, making everything cleaner and easier to manage:

```sh
depends=('package1' 'package2' 'package3')
buster_depends=(${depends[@]} 'package4')
groovy_depends=(${depends[@]} 'package5')
```
---

Note that the variables you mention must already be defined. So, attempting something like this **would not** work:

```sh
buster_depends=(${depends[@]} 'package4')
groovy_depends=(${depends[@]} 'package5')
depends=('package1' 'package2' 'package3')
```

This would end up looking like so after the variables are substituted, and thus cause issues:

```sh
buster_depends=('package4')
groovy_depends=('package5')
depends=('package1' 'package2' 'package3')
```
