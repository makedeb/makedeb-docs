---
title: "Comparisons to Other Tools"
draft: false
weight: 4
---

The sections below outline some major differences makedeb has with other tools, which may aid in helping you decide if makedeb is the tool that's right for you or your team.

{{< notice "note" >}}
If information on this page appears to be wrong or out of date, please [submit an issue](https://{{< github_url >}}/makedeb/makedeb-docs/issues).
{{< /notice >}}

## Standard Debian build tools
This includes tools like `debuild` and `dpkg-deb`; these are the tools that are commonly used to build packages for Debian and Ubuntu based distributions.

### Ease of use
The normal Debian packaging tools are known for not being the most user-friendly towards new users - they're the reason makedeb exists in the first place. Notably, the standard way of creating a Debian package involves creating a source package consisting of a `debian/` directory, which contains multiple files that describe how to build a package. This is quite verbose (as makedeb demonstrates), with makedeb commonly only requiring a single file in order to build a package.


The `rules` file used in Debian packaging also uses Makefile syntax, which isn't the nicest to work with, especially as project complexity starts to increase.

makedeb's [`PKGBUILD` syntax](/makedeb/pkgbuild-syntax) alleviates both of these issues, with it putting most packaging information into a single file, whilst also being simple to write and look at.

### Debian/Ubuntu mainline repositories
Due to packaging requirements, you should avoid makedeb if you're wanting to get your application into the mainline Debian/Ubuntu repositories, as makedeb is unable to build the source packages required for such. If you plan on distributing packages on your own APT repository though (which also has other benefits such as allowing your package's updates to be distributed to end users immediately), makedeb will work just fine.

## Pacstall
[Pacstall](https://pacstall.dev) is a package manager that function as an AUR-like platform for Ubuntu systems.

### Build file format
Both Pacstall and makedeb use a Bash-like syntax to set up their build files. Pacstall uses a more custom format for their build files though, while makedeb uses a format that's heavily based on that of [PKGBUILDs from Arch Linux](/makedeb/pkgbuild-syntax), meaning there's less to learn and get accustomed to if you're already used to those.

### Ease of use
Pacstall has both the build tool and package repository management in a single program, making it easier to install packages from remote locations out of the box. makedeb functions solely as the build tool though, meaning installing makedeb packages from a repository must be done elsewhere. makedeb solves this issue though with the [MPR](/using-the-mpr) and [MPR helpers](/using-the-mpr/list-of-mpr-helpers), though these tools must be set up manually after installing makedeb.

makedeb also has the [Prebuilt-MPR](/prebuilt-mpr), which provides a repository of popular MPR packages installable directly via `apt` without makedeb even being installed, providing a way for users to install extra packages without having to learn another package management system.

### Available packages
makedeb's main package repository (the aformetioned [MPR](/using-the-mpr)) [includes more packages](https://mpr.{{< makedeb_url >}}/about) than [Pacstall's main package repository](https://github.com/pacstall/pacstall-programs) [[1](https://github.com/pacstall/pacstall-programs/blob/master/packagelist)], meaning there's a better chance software you want will be available with makedeb than with Pacstall.
