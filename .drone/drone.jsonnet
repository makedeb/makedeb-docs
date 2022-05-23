local buildAndPublish() = {
    name: "build-and-publish",
    kind: "pipeline",
    type: "docker",
    volumes: [{name: "deploy-dir", host: {path: "/var/www/docs.makedeb.org"}}],
    trigger: {
        branch: ["main"],
        repo: ["makedeb/makedeb-docs"]
    },
    steps: [{
        name: "build-and-publish",
        image: "proget.hunterwittenborn.com/docker/makedeb/makedeb:ubuntu-focal",
        volumes: [{name: "deploy-dir", path: "/var/www/docs.makedeb.org"}],
        commands: [
            "curl -q \"https://proget.$${hw_url}/debian-feeds/prebuilt-mpr.pub\" | gpg --dearmor | sudo tee /usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg 1> /dev/null",
            "echo \"deb [signed-by=/usr/share/keyrings/prebuilt-mpr-archive-keyring.gpg]\" https://proget.$${hw_url} prebuilt-mpr focal | sudo tee /etc/apt/sources.list.d/prebuilt-mpr.list",
            "sudo apt-get update",
            "sudo apt-get install hugo -y",
            "find /var/www/docs.makedeb.org/ -mindepth 1 -maxdepth 1 -exec sudo rm -rf '{}' +",
            "sudo hugo -d /var/www/docs.makedeb.org"
        ]
    }]
};

[buildAndPublish()]

// vim: set syntax=javascript ts=4 sw=4 expandtab:
