The primary method for installation of makedeb is through the use of makedeb's APT repository.

!!! note
    These instructions are also applicable to distributions based on Debian and Ubuntu, such as Pop!_OS, Linux Mint, and the various [Ubuntu flavors](https://ubuntu.com/download/flavours).

## Repository Configuration
First, add the signing key:

```sh linenums="1"
wget -qO - 'https://{{env.proget_url}}/debian-feeds/makedeb.pub' | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/makedeb-archive-keyring.gpg &> /dev/null
```

Next, add the repository information to your system:

```sh linenums="1"
echo 'deb [signed-by=/usr/share/keyrings/makedeb-archive-keyring.gpg arch=all] https://{{env.proget_url}}/ makedeb main' | \
sudo tee /etc/apt/sources.list.d/makedeb.list
```

Lastly, update the repository cache on your system:

```sh linenums="1"
sudo apt update
```

## Installation
=== "Stable"
    ```sh linenums="1"
    sudo apt install makedeb
    ```

=== "Beta"
    ```sh linenums="1"
    sudo apt install makedeb-beta
    ```

=== "Alpha"
    ```sh linenums="1"
    sudo apt install makedeb-alpha
    ```
