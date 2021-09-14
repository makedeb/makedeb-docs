Current and past maintainers of packages on the MPR **MUST** have a commented line at the top of the PKGBUILD with their name/username followed by their email address.

!!! note
    An exception to this rule exists for bot accounts, which may be omitted at the discretion of the primary maintainer of a package.

The email address may appear normally or disguised, at the discretion of the user.

Maintainers and Co-Maintainers should both be listed as maintainers, with previous maintainers being listed as contributors.

With that, regard the following format when entering maintainers and contributors into a PKGBUILD:

```sh
# Maintainer: John Doe <johndoe@example.com>
# Maintainer: Jane Doe <janedoe at example dot com>
# Contributor: Foo Bar <foobar@example.com>
```

!!! note
    Entering the maintainers into `# Maintainer` comments is vital to the `Maintainer` field in the built package functioning properly.
