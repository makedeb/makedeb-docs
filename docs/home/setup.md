# Setup
Depending on the system you're on, you'll need follow different instructions.

## Debian
!!! info
    These instructions are also applicable to distributions based on Debian, such as Ubuntu, Pop!_OS, Linux Mint, and the various [Ubuntu flavors](https://ubuntu.com/download/flavours).

On Debian-based systems, makedeb can be installed from the [official APT repository](./#apt-repository) or from the [MPR](./#mpr).

### APT Repository
The primary method for installing of makedeb on Debian-based systems is through the use of makedeb's APT repository.

Besides distributing makedeb itself, the repository also holds dependencies that makedeb needs to function properly.

#### Repository Configuration
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

Now that your system is set up, you can proceed to [installing makedeb](/home/installing/).

### MPR
Users who have an existing installing of makedeb can [install makedeb via the MPR](/home/installing/).

## Arch Linux
!!! info
    These instructions are also applicable to distributions based on Arch, such as Manjaro and Artix Linux.

makedeb is distributed via the Arch User Repository for Arch Linux systems. Applicable links can be found in the [installation](/home/installing/) section.
