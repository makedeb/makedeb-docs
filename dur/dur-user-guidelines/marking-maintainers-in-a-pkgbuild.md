Current and past maintainers of packages on the DUR **MUST** have a commented line at the top of the PKGBUILD with their name/username followed by their email address.

The email address may appear normally or disguised, at the discretion of the user.

Maintainers and Co-Maintainers should both be listed as maintainers, with previous maintainers being listed as contributors.

With that, regard the following format when entering maintainers and contributors into a PKGBUILD:

```sh
# Maintainer: John Doe <johndoe@example.com>
# Maintainer: Jane Doe <janedoe at example dot com>
# Contributor: Foo Bar <foobar@example.com>
```

{% hint style="info" %}
Entering the maintainers into `# Maintainer` comments is vital to [the `Maintainer` field in the built package](/makedeb/additional-pkgbuild-specs/the-maintainer-field.md) functioning properly.
{% endhint %}
