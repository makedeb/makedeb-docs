---
title: "Installing Packages"
draft: false
weight: 2
---

Installing packages from the MPR is usually a straightforward process, and will typically only consist of a few steps:

1. Acquire the build files for the packages.
2. Verify that the package and any other used files don't contain malicious (or otherwise untrustworthy) code or links.
3. Build the package with `makedeb`, which will perform all the needed steps to properly package the application.
4. Install the package with `apt`.

## Acquiring build files
To get all needed build files, just run the following command (replacing `pkgname` with the name of the MPR package):

```sh
git clone "https://mpr.{{< makedeb_url >}}/pkgname.git"
```

## Creating the package
First change directories to the package you just cloned:

```sh
cd pkgname/
```

{{< notice "warning" >}}
Make sure to carefully check all build files for potentially malicious code before building (common files include `preinst`, `postinst`, `prerm` and `postrm` scripts, as well as the PKGBUILD itself). If you're not sure if a package is malicious, do not build the package and ask for help in makedeb's support rooms`.
{{< /notice >}}

Next you need to actually create the flag by running `makedeb`. Some common arguments that you may want to pass include:

- `-s`/`--syncdeps`: Automatically installs missing build dependencies before building. If the package depends on other MPR packages, you'll need to install those manually first.
- `-i`/`--install`: Installs the created package automatically if and after a successful build is made (only works on the Debian releases of makedeb).
- `-r`/`--rmdeps`: Removes unneeded dependencies found in `makedepends` and `checkdepends` after a successful build. You may want to avoid this option if you're going to be rebuilding a package a lot.

{{< notice "note" >}}
If makedeb complains about errors during dependency installation when using the `-i` flag, check the output of APT for any missing dependencies and search the MPR for the missing packages. Then, follow the above steps, installing the packages additionally with the `--asdeps` passed to makedeb.

In the case of MPR dependencies being present, it may also be wiser to look into using an [MPR helper](/mpr/list-of-mpr-helpers), which can, among other things, help automate the finding of MPR dependencies for you.
{{< /notice >}}
