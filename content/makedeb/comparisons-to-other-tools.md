---
title: "Comparisons to Other Tools"
draft: false
weight: 4
---

The sections below outline some major differences makedeb has with other tools, which may aid in helping you decide if makedeb is the tool that's right for you or your team.

{{< notice "note" >}}
If information on this page appears to be out of date, please [submit an issue](https://{{< github_url >}}/makedeb/makedeb-docs/issues).
{{< /notice >}}

## Standard Debian build tools
This includes tools like `debuild` and `dpkg-deb`; these are the tools that are commonly used to build packages for Debian and Ubuntu based distributions.

The normal Debian packaging tools are known for not being the most user-friendly towards new users - they're the reason makedeb exists in the first place. Notably, the standard way of creating a Debian package involves creating a source package consisting of a `debian/` directory, which contains multiple files that describe how to build a package. This is quite verbose (as makedeb demonstrates), with makedeb commonly only requiring a single file in order to build a package.


The `rules` file used in Debian packaging also uses Makefile syntax, which isn't the nicest to work with, especially as project complexity starts to increase.

makedeb's [`PKGBUILD` syntax](/makedeb/pkgbuild-syntax) alleviates both of these issues, with it putting most packaging information into a single file, whilst also being simple to write and look at.

There's a few things that standard Debian build tools can do that makedeb can't, though most of these use cases are fairly uncommon, and makedeb will work just fine for most things you need it to do.

## Pacstall
[Pacstall](https://pacstall.dev) is a package manager that function as an AUR-like platform for Ubuntu systems.

### Installing packages
The biggest difference between Pacstall and makedeb is the method for installing packages. Pacstall uses a custom installation method using [`stow`](https://www.gnu.org/software/stow/manual/stow.html), while makedeb uses the native `.deb` package format, which results in makedeb having better system integration than Pacstall.

Pacstall packages also can only be installed on the system they're built on. Since makedeb uses the `.deb` package format though, once you build a package, it can be installed on the system that built the package, as well as transferred to any other system and installed via `apt` like any other Debian package.

### Build file format
Both Pacstall and makedeb use a Bash-like syntax to set up their build files. Pacstall uses a more custom format for their build files though, while makedeb uses a format that's heavily based on that of [PKGBUILDs from Arch Linux](/makedeb/pkgbuild-syntax), meaning there's less to learn if you're already used to those.

### Ease of use
Pacstall has both the build tool and package repository management in a single program, making it easier to install packages from remote locations out of the box. makedeb functions solely as the build tool though, meaning installing makedeb packages from a repository must be done elsewhere. makedeb solves this issue though with the [MPR](/using-the-mpr) and [MPR helpers](/using-the-mpr/list-of-mpr-helpers), though these tools must be set up manually after installing makedeb.

makedeb also has the [Prebuilt-MPR](/prebuilt-mpr), which provides a repository of popular MPR packages installable directly via `apt` without makedeb even being installed, providing a way for users to install extra packages without having to learn another package management tool.
