local buildAndPublish() = {
    name: "build-and-publish",
    kind: "pipeline",
    type: "docker",
    volumes: [{name: "deploy-dir", host: {path: "/var/www/docs.makedeb.org"}}],
    trigger: {
        branch: ["master"],
        repo: ["makedeb/makedeb-docs"]
    },
    steps: [{
        name: "build-and-publish",
        image: "proget.hunterwittenborn.com/docker/makedeb/makedeb:ubuntu-focal",
        volumes: [{name: "deploy-dir", path: "/var/www/docs.makedeb.org"}],
        commands: [
            "sudo apt-get update",
            "sudo apt-get install git gcc g++ -y",
            "sudo chown 'makedeb:makedeb' ./ -R",
            "git clone \"https://$${mpr_url}/golang-go\"",
            "git clone \"https://$${mpr_url}/hugo\"",
            "cd golang-go/; makedeb -si --no-confirm; cd ../",
            "cd hugo/; makedeb -di --no-confirm; cd ../",
            "find /var/www/docs.makedeb.org/ -mindepth 1 -maxdepth 1 -exec sudo rm -rf '{}' +",
            "sudo hugo -d /var/www/docs.makedeb.org"
        ]
    }]
};

[buildAndPublish()]

// vim: set syntax=javascript ts=4 sw=4 expandtab:
