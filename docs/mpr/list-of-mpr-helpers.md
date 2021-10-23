MPR helpers can automate parts of the build process for packages on the MPR. They can do things such as providing search functionality, automatic dependency resolution, and telling you when packages on your system need to be updated.

!!! Note
    All MPR helpers are **unsupported** under all circumstances. If you're having a problem with an MPR helper, please try reaching out to the maintainer, the helper's support rooms, or other methods of contact before asking for help in the makedeb support rooms.

## Feature key
| Feature              | Description                                                                                                                                              |
| :---                 | ---:                                                                                                                                                     |
| **Search**           | Is able to search for packages on the MPR via the MPR's [RPC interface](/mpr/using-the-mpr/using-the-rpc-interface).                                     |
| **Clone**            | Can automatically clone packages from the MPR (`Partial` means that the package provides cloning functionality as part of it's installation features).   |
| **Install**          | Can automatically install packages from the MPR.                                                                                                         |
| **Update**           | Can automatically update installed packages from the MPR.                                                                                                |
| **APT-Install**      | Can install standard APT packages in addition to MPR packages (Simply installing dependencies via APT does not make a package quality for this feature). |
| **APT-Update**       | Can update standard APT packages in addition to MPR packages.                                                                                            |
| **Git-Update**       | Can update `-git` packages automatically.                                                                                                                |
| **MPR-Dependencies** | Can automatically find and install MPR dependencies needed to build a package.                                                                           |

Outside of that listed above:

- **Partial** means the provided functionality partially deviates from the listed feature.
- **Optional** means that the feature isn't enabled by default, and requires a CLI argument or config option to be enabled.

## Helpers
| Name  | MPR Package                                             | Homepage                                                                                 | Programming Language | Search | Clone | Install | Update | APT-Install | APT-Update | Git-Update               | MPR-Dependencies  |
| :---  | :------------------------------------------------------ | :--------------------------------------------------------------------------------------- | :------------------- | :----- | :---- | :------ | :----- | :---------- | :--------- | :----------------------- | :---------------  |
| Stoke | [stoke-git](https://{{env.mpr_url}}/packages/stoke-git) | [https://{{env.github_url}}/Henryws/stoke](https://{{env.github_url}}/Henryws/stoke)     | Bash                 | Yes    | Yes   | Yes     | Yes    | Yes         | Yes        | Partial, Optional        | Yes               |
| Tap   | [tap](https://{{env.mpr_url}}/packages/tap)             | [https://{{env.github_url}}/hwittenborn/tap](https://{{env.github_url}}/hwittenborn/tap) | Python               | Yes    | Yes   | Yes     | Yes    | No          | No         | No                       | No                | 
