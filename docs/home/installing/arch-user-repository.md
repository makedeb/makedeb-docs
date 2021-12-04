!!! info
    These instructions are also applicable to distributions based on Arch, such as Manjaro and Artix Linux.

Manual installation instructions are shown below. Alternatively, you can install an [AUR helper](https://wiki.archlinux.org/title/AUR_helpers), which can help automate the process.

=== "Stable"
    ### Installation instructions
    ```sh
    git clone "https://{{env.aur_url}}/makedeb.git"

    cd ../makedeb/
    makepkg -si
    ```


=== "Beta"
    ### Installation instructions
    ```sh
    git clone "https://{{env.aur_url}}/makedeb-beta.git"

    cd ../makedeb-beta/
    makepkg -si
    ```


=== "Alpha"
    ### Installation instructions
    ```sh
    git clone "https://{{env.aur_url}}/makedeb-alpha.git"

    cd ../makedeb-alpha/
    makepkg -si
    ```
