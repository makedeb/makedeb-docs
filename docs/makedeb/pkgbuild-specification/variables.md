## Key
- `required`: Needed by makedeb to build a package.
- `optional`: May be omitted.
- `function`: Variable may be used inside of a function.
- `nofunction`: Variable is not allowed to be used inside of a function.
- `string`: Variable must be a string.
- `array`: Variable must be an array.
- `mixed`: Variable can be either a string or an array.

## Package name

### pkgname `(required, nofunction, mixed)`
The package name set inside of the built package.

## Package version
This variable can be either a string or an array, with the latter being used to build multiple packages from a single PKGBUILD.

Allowed characters are lowercase alphanumerics, plus signs (`+`), minus signs (`-`) and periods (`.`).

### pkgver `(required, nofunction, string)`
The version number of a package.

If packaging from a upstream source that is also version, this should generally be kept the same as said source's version unless required to work properly with makedeb.

Allowed characters are all alphanumerics, periods (`.`) and plus signs (`+`).

!!! info
    This variable combines with `pkgrel` and `epoch` to form a full version identifier like so:

    ```
    epoch:pkgver-pkgrel
    ```

    When `epoch` is less than or equal to 0, the version identifier would instead look like this:
    ```
    pkgver-pkgrel
    ```

### pkgrel `(required, nofunction, string)`
The release number of a package.

This variable should be set to `1` by default, and then incremented by `1` as additional changes are made to the PKGBUILD that require `pkgver` to not change. Whenever `pkgver` does change, this variable should be reset back to `1`.

### epoch `(optional, nofunction, string)`
This forces the package to be seen as a newer version than any other with a lower version.

This variable shouldn't be used in most packages, and should only be added when absolutely required to do so (such as when an upstream source changes their version numbering scheme).

## Generic

### pkgdesc `(mandatory, function, string)`
The description of a package.

This can be of any length, and should not be multiple lines. All characters are allowed except colons (`:`).

### arch `(mandatory, nofunction, array)`
Sets what system architectures a package can be built on. Architectures in this list should be set to those found in the output of `uname -m`.

!!! bug
    Do not use the architecture found from the output of `dpkg --print-architecture`. See [issue #25](https://github.com/makedeb/makedeb/issues/25) for more information.

### url `(optional, function, string)`
The URL of the software being packaged. When a website doesn't exist for the upstream project, this is commonly set to the URL of a VCS repository.

*[VCS]: Version control system. Examples include Git and Subversion.

### license `(optional, function, array)`

Sets the license(s) under which a program is distributed.

This should be set to the name of a license under `/usr/share/common-licenses` or should otherwise be set to `custom`.

!!! note
    When using `custom`, you can also attach a license suffix like so:

    ```sh
    license=(`custom: name of license`)
    ```

When using `custom`, it is also recommended to install the license under `/usr/share/doc/{pkgname}/copyright`, replacing `{pkgname}` with the name of your program set under the `pkgname` variable.

## Dependencies

### depends `(optional, function, array)`
A list of packages needed to execute a program.

When listed as a variable from the root of a PKGBUILD, the dependencies get installed before a build takes place. If placed inside of a function such as `package()`, the dependencies get marked as needed by the built package, but won't be checked for while building.

Version restrictions can be specified via comparison operators (`>`, `>=`, `=`, `<=`, `<`) to require a certain version of a package.

If you need more specificity than the above allows (i.e. great than one version, while also less than another), you can repeat the package name multiple times with each operator, i.e.

```sh
depends=('foo>=1.0.0' 'foo<2.0.0')
```

!!! tip
    You can append this variable with architectures (such as `x86_64`) to make this variable get overwritten on certain architectures. When using such, all architecture extensions should also be present under the `arch` variable.

    You can also **prepend** this variable with a distribution id such as `focal` (i.e. `focal_depends` or `focal_depends_x86_64` if you really needed specificity) to overwrite the variable on certain **releases** of a distribution.

    Detection of the distribution name is done via the `lsb_release -cs` command, which is then used to check for the relevant variable.

    Support for these variable tags is also supported on `makedepends`, `checkdepends`, `optdepends`, `conflicts`, `provides`, `replaces`, `source` and all checksum variables. You can also use architecture-specific tags on build functions (`prepare()`, `pkgver()`, `build()`, `check()`, `package()`), though distribution-specific tags will currently not work.

### makedepends `(optional, nofunction, array)`
An array of packages that are only required to build a program.

This variable takes the same syntax as `depends`.

Packages put here will be removed when using makedeb's `-r` option.

Any packages listed under `depends` should not be duplicated here.

### checkdepends `(optional, nofunction, array)`
An array of packages needed to run the `check()` function in a PKGBUILD.

This variable behaves the same way as `makedepends`.

!!! bug
    Packages in this list should only be checked for when the `check()` function is present and command-line arguments aren't stopping the function from running (likewise though, they aren't). Currently that means this variable is quite interchangeable with `makedepends`, though you shouldn't rely on that behavior.

### optdepends `(optional, function, array)`
An array of packages that aren't required for a program to run, but add additional features.

Packages in this list won't be checked as build dependencies, regardless of where placed. If you need said behavior, add said packages to `makedepends` or `checkdepends`.

This variable takes the same syntax as `depends` with a few additions:

1. Packages listed here may optionally be prefixed with `r!` or `s!`. Adding the `r!` prefix will mark said dependency as recommended in the built package, while adding `s!` or simply omitting both will mark the package as suggested.

2. Packages listed here can be prefixed with a description of what functionality the dependency adds like so:
```sh
optdepends=('netcat: hosting support'
            'cups: printing support')
```

### conflicts `(optional, function, array)`
A list of packages that the built package can't be installed at the same time with.

This variable takes the same syntax as `depends`.

Any packages listed here will be required to be uninstalled before the built package can be installed.

Specifying comparison operators will cause the package to only conflict with package versions that the operator covers.

### provides `(optional, function, array)`
A list of packages that the built package provides the dependency for.

This variable takes the same syntax as `depends`.

For example, if the PKGBUILD is building the `foo-new` program and another package needs `foo`, as a dependency, you could put the following in a PKGBUILD to make `foo-new` satisfy the dependency:

```sh
provides=('foo')
```

Specifying comparison operators here will cause the provided package to only be provided for when other packages request a version that fits the operator.

## Other

### options `(optional, function, array)`
Allows overriding some of makedeb's default behavior. To set an option, include it in the array. To disable an option, prefix the option with a `!`.

The following options may be specified:

- `strip`: Strip symbols from binaries.
- `emptydirs`: Leave empty directories in packages.
- `zipman`: Comprezz man and info pages with gzip.
- `lto`: Enable building packages using link time optimization. Adds `-flto` to both `CFLAGS` and `CXXFLAGS`.

### install `(optional, function, string)`
The name of an installation script to be included in the package.

APT can use this script to perform operations after and before both installations and removals of packages.

The file should be a Bash script containing any combination of the following four functions:

- `pre_install()`: Ran before files of a package are unpacked (happens during installation of a package).
- `post_install()`: Ran right after files of a package are unpacked (happens during installation of a package).
- `pre_remove()`: Ran right before files of a packaged are removed (happens during removal of a package).
- `pre_remove()`: Ran right before files of a packaged are removed (happens during removal of a package).

!!! info
    See [Debian Policy Manual - Summary of ways maintainer scripts are called](https://www.debian.org/doc/debian-policy/ch-maintainerscripts.html#summary-of-ways-maintainer-scripts-are-called) for information on how and when maintainer scripts are called.

    Note that the relevant functions are listed as `preinst`, `postinst`, `prerm` and `postrm`.

## Sources

### source `(optional, nofunction, array)`
A list of files needed to build a package.

Files should be specified via a URI such as with FTP and HTTP. Previously defined variables can also be used effectively here:

```sh
source=("https://example.com/${pkgname}-${pkgver}.tar.gz")
```

Files in the source array that have a `.sig`, `.sign` or `.asc` extension are recognized by makedeb as PGP signatures and will be automatically used to verify the integrity of the source file under the same name.

You can also prefix the source with `name::`, which allows you to specify where the file is saved to after a download:

```sh
source=("package-file::https://example.com/${pkgname}-${pkgver}.tar.gz")
```

### noextract `(optional, nofunction, array)`
A list of archive files from `source` which should not be automatically extracted by makedeb. This can be useful when you can't/don't want to use makedeb's automatic extraction features or you need to install an archive as-is onto a system.

The items in this list should point to the **filename** of downloaded files, not the full URL (i.e. that being `${pkgname}-${pkgver}.tar.gz` in our previous example).

## Integrity
An array of checksums for files in the `source` array.

The number of items in this array **must** match that in `source`, with each item corresponding to that in `source` in the order they appear.

The checksums in this array should always be those provided by the upstream program, sometimes being bundled alongside releases.

The following checksum types are supported, and should be entered in the format `{checksum}sums` (i.e. `sha256sums`):

- md5
- sha1
- sha224
- sha256
- sha384
- sha512
- b2

At minimum, one of these types **must** be present. If you otherwise would prefer to avoid any hash checks, simply choose any checksum type (`sha256sums` is historically used due to it being popular when actually using checksums) and set all of its values to `SKIP`.
