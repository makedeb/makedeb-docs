!!! info
    This method requires an existing installation of makedeb. If you don't have makedeb installed yet, you can install it through the [APT repository](/home/setup/#apt-repository).

=== "Stable"
    ### Needed packages
    - `makedeb-makepkg`   
    - `makedeb`   

    ### Installation instructions
    ```sh
    git clone "https://{{env.mpr_url}}/makedeb.git"
    git clone "https://{{env.mpr_url}}/makedeb-makepkg.git"

    cd makedeb-makepkg/
    makedeb -si

    cd ../makedeb/
    makedeb -si
    ```


=== "Beta"
    ### Needed packages
    - `makedeb-makepkg-beta`   
    - `makedeb-beta`   

    ### Installation instructions
    ```sh
    git clone "https://{{env.mpr_url}}/makedeb-beta.git"
    git clone "https://{{env.mpr_url}}/makedeb-makepkg-beta.git"

    cd makedeb-makepkg-beta/
    makedeb -si

    cd ../makedeb-beta/
    makedeb -si
    ```


=== "Alpha"
    ### Needed packages
    - `makedeb-makepkg-alpha`   
    - `makedeb-alpha`   

    ### Installation instructions
    ```sh
    git clone "https://{{env.mpr_url}}/makedeb-alpha.git"
    git clone "https://{{env.mpr_url}}/makedeb-makepkg-alpha.git"

    cd makedeb-makepkg-alpha/
    makedeb -si

    cd ../makedeb-alpha/
    makedeb -si
    ```
