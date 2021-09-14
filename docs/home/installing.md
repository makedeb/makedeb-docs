# Installing

makedeb distributes releases through three update channels: `stable`, `beta` and `alpha`.

`stable` is the tested, known-to-work release of makedeb, which is ready to be used inside of production environments.

`beta` is regularly synced from the `alpha` branch. This release serves as the entrypoint for bringing new features to the stable release, and is where most testing takes place.

Lastly, `alpha` is the cutting-edge build, which receives updates as soon as changes are pushed to the Git repository, allowing users to see changes as soon as they are made. Users of this channel should prepare (and expect) for breakage from time to time.

=== "APT"
    !!! info
        Using this method requires [the APT repository to be set up](/home/setup/#apt-repository) on your system.

    Stable:
    ```sh linenums="1"
    sudo apt install makedeb
    ```

    Beta:
    ```sh linenums="1"
    sudo apt install makedeb-beta
    ```

    Alpha:
    ```sh linenums="1"
    sudo apt install makedeb-alpha
    ```

=== "MPR"

    !!! info
        This method requires an existing installation of makedeb. If you don't have makedeb installed yet, you can install it through the [APT repository](/home/setup/#apt-repository).

    !!! hint
        To install these packages, run the following commands (replace `{package}` with the relevant package):

        ```sh linenums="1"
        git clone "https://{{env.mpr_url}}/{package}"   
        cd "{package}"
        makedeb -si
        ```

    Stable:   
      - `makedeb-makepkg`   
      - `makedeb`   

    Beta:   
    - `makedeb-makepkg-beta`   
    - `makedeb-beta`   

    Alpha:   
    - `makedeb-makepkg-alpha`   
    - `makedeb-alpha`   

=== "AUR"
    !!! hint
        To install these packages, run the following commands (replace `{package}` with the relevant package):

        ```sh linenums="1"
        git clone "https://{{env.aur_url}}/{package}"   
        cd "{package}"
        makepkg -si
        ```

        Alternatively, you can install an [AUR helper](https://wiki.archlinux.org/title/AUR_helpers), which can help automate the building and installation process.

    Stable:   
      - `makedeb-makepkg`   
      - `makedeb`   

    Beta:   
      - `makedeb-makepkg-beta`   
      - `makedeb-beta`   

    Alpha:   
      - `makedeb-makepkg-alpha`   
      - `makedeb-alpha`   
