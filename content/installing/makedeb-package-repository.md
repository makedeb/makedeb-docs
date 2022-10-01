---
title: "makedeb Package Repository"
draft: false
weight: 4
---

{{< notice "warning" >}}
This method requires an existing installation of makedeb. If you don't have makedeb installed yet, you can install it through the [APT repository](/installing/apt-repository).
{{< /notice >}}

makedeb can be installed from the MPR in a [bootstrap-like manner](https://en.wikipedia.org/wiki/Bootstrapping_(compilers)), allowing one to package and install makedeb from an existing installation on one's system.

makedeb used to use this as the primary method for packaging, but has since switched to using the [Debian source package layout](https://wiki.debian.org/Packaging/SourcePackage), as bootstrapping can cause issues if an existing release has bugs that prevent a new package from being properly built.

Users installing makedeb from the MPR should also be aware of this issue if they choose to use the MPR as their primary method for updating makedeb.

## Installing

Links for installing makedeb from the MPR can be found on each package's page on the MPR.

- [Stable](https://mpr.{{< makedeb_url >}}/packages/makedeb)
- [Beta](https://mpr.{{< makedeb_url >}}/packages/makedeb-beta)
- [Alpha](https://mpr.{{< makedeb_url >}}/packages/makedeb-alpha)
