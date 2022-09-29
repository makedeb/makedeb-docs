---
title: "Mist - The MPR CLI"
draft: false
weight: 2
aliases: ["/using-the-mpr/list-of-mpr-helpers"]
---

Mist is the official command-line interface for the MPR.

It makes it easier to interact with the MPR, and can do things such as:

- Provide an easy way to install and upgrade packages from the MPR.
- Provide automatic dependency resolution when installing and upgrading packages from the MPR.
- Search, list, view comments, and comment on packages from the MPR.

Mist also functions as a wrapper around APT - it can install, upgrade, search for, and list standard APT packages in addition to packages from the MPR.

{{< notice "note" >}}
Mist is capable of more than just the things listed here. See the [GitHub project](https://github.com/makedeb/mist) for a full list of what Mist is capable of.
{{< /notice >}}

## Installing Mist
There's a few ways you can install Mist:

### From the Prebuilt-MPR (Recommended)
This is the recommended way to install Mist. It avoids the need to compile any software, allows for automatic upgrades via APT (and Mist once it's installed), and gets you set up in just a couple of minutes.

First, [set up the Prebuilt-MPR on your system](https://docs.makedeb.org/prebuilt-mpr/getting-started), then just run the following to install Mist:

```sh
sudo apt install mist
```

### From the MPR
You can also install Mist directly from the MPR if you'd prefer that.

#### From Source
To install from source, install `mist` from the MPR:

```sh
git clone 'https://mpr.makedeb.org/mist'
cd mist/
makedeb -si -H 'MPR-Package: yes'
```

{{< notice "warning" >}}
If you omit `-H 'MPR-Package: yes'`, Mist will be **unable to update itself**.
{{< /notice >}}

{{< notice "note" >}}
Mist currently requires the nightly version of the Rust compiler toolchain in order to build. To build it locally, it's recommended to use [rustup](https://rustup.rs), which will automatically manage and update the nightly toolchain on your local system. If preferred, rustup can be installed from the [MPR](https://mpr.makedeb.org/packages/rustup) or the Prebuilt-MPR.
{{< /notice >}}

#### From a Binary
To install Mist from a prebuilt binary, install the `mist-bin` package:

```sh
git clone 'https://mpr.makedeb.org/mist-bin'
cd mist/
makedeb -si
```