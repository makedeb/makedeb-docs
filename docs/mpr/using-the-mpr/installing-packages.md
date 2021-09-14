Installing packages from the MPR is usually a straightforward process, and will only consist of the following in most cases:

1. Acquire the build files for the package.

2. Verify that the package and any other used files don't contain malicious (or otherwise untrustworthy) code or links.

3. Create the package with `makedeb`, which will perform all the needed steps to properly create the package.

4. Install the package with `apt install package.deb`

## Acquiring build files
To get all needed build files, just run the following command (replacing `pkgname` with the name of the MPR package):

```sh
git clone "https://{{env.mpr_url}}/pkgname.git"
```

## Creating the package
First change directories to the package you just cloned:

```sh
cd pkgname
```

!!! tip
    If you're upgrading a package rather than installing it fresh, it may be more helpful to look at what's changed since the last installing instead.

    You can see the changes in build files since the last commit with the `git show` command (look for lines that start with `+` and `-` for additions and deletions respectively).

!!! warning
    Make sure to carefully check all build files for potentially malicious code before building (common files include `.install` files and the PKGBUILD itself). If you're not sure if a package is malicious, do not build the package and seek help inside of makedeb's support rooms.

Next you need to actually create the flag by running `makedeb`. Some common arguments that you may want to pass include:

- `-s`/`--syncdeps`: Automatically installs missing build dependencies before building. If the package depends on other MPR packages, you'll need to install those manually first.

- `-i`/`--install`: Installs the created package automatically if and after a successful build is made (only works on the Debian releases of makedeb).

- `-r`/`--rmdeps`: Removes unneeded dependencies found in `makedepends` and `checkdepends` after a successful build. You may want to avoid this option if you're going to be rebuilding a package a lot.

!!! info
    If you otherwise chose to not pass the `-i`/`--install` argument, you can install the built package(s) from the `.deb` files contained in your current directory.

    If extras `.deb` files exist (such as is the case with `-bin` packages that download `.deb` packages as their source), the built package should be contained under the following name style: `{pkgname}_{pkgver}-{pkgrel}_{arch}.deb` (`arch` will most likely differ from what is contained in the PKGBUILD though - see `pkg/pkgname/DEBIAN/control` in the PKGBUILD's directory for the actual architecture).
