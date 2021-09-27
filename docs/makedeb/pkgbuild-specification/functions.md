When building a package, makedeb will call the following five functions if they have been defined in the PKGBUILD. The `package()` function must always be present; omitting any of the rest will simply cause makedeb to skip running it.

## prepare()
This function defines commands used to prepare sources for building, such as patching. This function runs right after package sources are extracted, and before the `pkgver()` and `build()` functions.

!!! note
    This function is run with the `errexit` Bash option, which will cause the function to immediately exit if any of the contained commands exit with a non-zero status code.

## pkgver()
`pkgver()` is executed after `prepare()` is ran. This function should output a valid version identifier, which makedeb will automatically update the package version to.

This can be particularly useful when working with VCS sources such as Git, where packages may receive updates multiple times a day (in which case it would be quite inconvenient to continuously update the `pkgver` variable).

## build()
This function is called after `prepare()` and `pkgver()`, and should contain commands needed to properly build a program.

makedeb will change the current directory to `${srcdir}` (which will be `./src/` from the directory containing the PKGBUILD) before executing `build()`, which will then put you into the directory containing all sources obtained from the `source` array.

## check()
This function should contain `make check` and/or other commands used to check if a program was built correctly and all needed dependencies are installed.

## package()
This final step is used to actually put the files previously created into a directory where makedeb can package up your program properly.

The folder to place said files in is `${pkgdir}`, which mimics the directory structure of an actual system (i.e. `${pkgdir}/etc/config.conf` points to `/etc/config.conf` when the package is actually installed).

Your system will still be under the `${srcdir}` directory, allowing you to easily copy files over to the package directory:

```sh
package() {
  install -Dm 755 "${pkgname}-${pkgver}/hello-world" "${pkgdir}/usr/bin/hello-world"
}
```

!!! info
    Note that you should not create files under `${pkgdir}/DEBIAN/`, as makedeb uses that folder to create metadata for the built package.
