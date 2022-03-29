---
title: "List of MPR Helpers"
draft: false
weight: 4
---

MPR helpers can automate parts of the build process for packages on the MPR. They can do things such as provide search functionality, automatic dependency resolution, and tell you when packages on your system need to be updated.

{{< notice "note" >}}
All MPR helpers are **unsupported** under all circumstances. If you're having a problem with an MPR helper, please try reaching out to the maintainer, the helper's support rooms, or other methods of contact before asking for help in the makedeb support rooms.
{{< /notice >}}

## Feature key
| Feature              | Description                                                                                                                                              |
| :---                 | ---:                                                                                                                                                     |
| **Search**           | Is able to search for packages on the MPR via the MPR's [RPC interface](/mpr/using-the-mpr/using-the-rpc-interface).                                     |
| **Clone**            | Can automatically clone packages from the MPR (`Partial` means that the package provides cloning functionality as part of its installation features).   |
| **Install**          | Can automatically install packages from the MPR.                                                                                                         |
| **Update**           | Can automatically update installed packages from the MPR.                                                                                                |
| **APT-Install**      | Can install standard APT packages in addition to MPR packages (Simply installing dependencies via APT does not make a package qualify for this feature). |
| **APT-Update**       | Can update standard APT packages in addition to MPR packages.                                                                                            |
| **Git-Update**       | Can update `-git` packages automatically.                                                                                                                |
| **MPR-Dependencies** | Can automatically find and install MPR dependencies needed to build a package.                                                                           |

Outside of that listed above:

- **Partial** means the provided functionality partially deviates from the listed feature.
- **Optional** means that the feature isn't enabled by default, and requires a CLI argument or config option to be enabled.

## Helpers
| Name | MPR Package                                                 | Homepage                                                                                 | Programming Language | Search | Clone   | Install | Update | APT-Install | APT-Update | Git-Update | MPR-Dependencies |
| :--- | :---------------------------------------------------------- | :--------------------------------------------------------------------------------------- | :------------------- | :----- | :------ | :------ | :----- | :------------------------------- | :------------------------------ | :------------------------------ | :------------------------------------ |
| Tap  | [tap](https://mpr.{{< makedeb_url >}}/packages/tap)         | [https://{{< github_url >}}/hwittenborn/tap](https://{{< github_url >}}/hwittenborn/tap) | Python               | Yes    | Partial | Yes     | Yes    | Yes                              | Yes                             | No                              | No                                    |
| una  | [una-bin](https://mpr.{{< makedeb_url >}}/packages/una-bin) | [https://{{< github_url >}}/AFK-OS/una](https://{{< github_url >}}/AFK-OS/una) 	        | Bash                 | Yes    | Yes     | Yes     | Yes    | Yes                              | Yes                             | Yes                             | Yes                                   |
