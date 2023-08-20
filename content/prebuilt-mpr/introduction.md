---
title: "Introduction"
draft: false
weight: 1
---

The Prebuilt-MPR serves precompiled binaries for packages on the MPR.

It provides a fast and easy way to install packages from the MPR, making it ideal for environments such as CI systems and beginner-oriented users who might have a worse experience with building from source.

{{< notice "warning" >}}
Not all packages on the MPR are available through the Prebuilt-MPR. You can get a current list of available packages at <https://github.com/makedeb/prebuilt-mpr/tree/main/packages.toml>.
{{< /notice >}}

## Security of the Prebuilt-MPR
All packages inside of the Prebuilt-MPR must first go through a [review process](https://{{< github_url >}}/makedeb/prebuilt-mpr-v2/#security), including any version updates.

You should thus be fine installing any package from the Prebuilt-MPR, though as with any user-based repository, you should still exert caution and only install packages that you deem to be safe.
