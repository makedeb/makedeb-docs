---
title: "Installing Packages"
draft: false
weight: 1
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
