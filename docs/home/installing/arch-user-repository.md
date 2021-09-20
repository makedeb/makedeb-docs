!!! info
    These instructions are also applicable to distributions based on Arch, such as Manjaro and Artix Linux.

Needed packages (as well as basic building and installation instructions) are shown below. Alternatively, you can install an [AUR helper](https://wiki.archlinux.org/title/AUR_helpers), which can help automate the process.

=== "Stable"
    ### Needed packages
    - `makedeb-makepkg`   
    - `makedeb`   

    ### Installation instructions
    ```sh
    git clone "https://{{env.aur_url}}/makedeb.git"
    git clone "https://{{env.aur_url}}/makedeb-makepkg.git"

    cd makedeb-makepkg/
    makepkg -si --asdeps

    cd ../makedeb/
    makepkg -si
    ```


=== "Beta"
    ### Needed packages
    - `makedeb-makepkg-beta`   
    - `makedeb-beta`   

    ### Installation instructions
    ```sh
    git clone "https://{{env.aur_url}}/makedeb-beta.git"
    git clone "https://{{env.aur_url}}/makedeb-makepkg-beta.git"

    cd makedeb-makepkg-beta/
    makepkg -si --asdeps

    cd ../makedeb-beta/
    makepkg -si
    ```


=== "Alpha"
    ### Needed packages
    - `makedeb-makepkg-alpha`   
    - `makedeb-alpha`   

    ### Installation instructions
    ```sh
    git clone "https://{{env.aur_url}}/makedeb-alpha.git"
    git clone "https://{{env.aur_url}}/makedeb-makepkg-alpha.git"

    cd makedeb-makepkg-alpha/
    makepkg -si --asdeps

    cd ../makedeb-alpha/
    makepkg -si
    ```
