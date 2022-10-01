---
title: "Shell Script"
draft: false
weight: 2
---

The easiest way to install makedeb is via the official installation script. It can be ran like so:

```sh
bash -ci "$(wget -qO - 'https://shlink.makedeb.org/install')"
```

## Noninteractive usage
By default the script runs interactively, and asks the user which release they'd like to install.

If you'd like to run the script in a noninteractive environment, such as in a CI or deployment script, simply omit the `-i` argument to `bash`, and pass in the `MAKEDEB_RELEASE` environment variable, set to a value of `makedeb`, `makedeb-beta`, or `makedeb-alpha`:

```sh
# Set the makedeb release you want.
export MAKEDEB_RELEASE='makedeb'

# Run the install script. Note that it's `bash -c` and not `bash -ci` now.
bash -c "$(wget -qO - 'https://shlink.makedeb.org/install')"
```