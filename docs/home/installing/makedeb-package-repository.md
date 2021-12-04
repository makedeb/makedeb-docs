!!! info
    This method requires an existing installation of makedeb. If you don't have makedeb installed yet, you can install it through the [APT repository](/home/setup/#apt-repository).

Manual installation instructions are shown below. Alternatively, you can install an [MPR helper](/mpr/list-of-mpr-helpers), which can help automate the process.

=== "Stable"
    ### Installation instructions
    ```sh
    git clone "https://{{env.mpr_url}}/makedeb.git"

    cd ../makedeb/
    makedeb -si
    ```


=== "Beta"
    ### Installation instructions
    ```sh
    git clone "https://{{env.mpr_url}}/makedeb-beta.git"

    cd ../makedeb-beta/
    makedeb -si
    ```


=== "Alpha"
    ### Installation instructions
    ```sh
    git clone "https://{{env.mpr_url}}/makedeb-alpha.git"

    cd ../makedeb-alpha/
    makedeb -si
    ```
