local buildAndDeploy() = {
  name: "build-and-deploy",
  kind: "pipeline",
  type: "docker",
  volumes: [{name: "web_root", host: {path: "/var/www/makedeb.hunterwittenborn.com/"}}],
  steps: [
    {
      name: "generate-docs",
      image: "python",
      volumes: [{name: "web_root", path: "/var/www/makedeb.hunterwittenborn.com/"}],
      commands: [
        "pip install -r requirements.txt",
        "mkdocs build --strict --site-dir '/var/www/makedeb.hunterwittenborn.com/'"
      ]
    }
  ]
};

[
  buildAndDeploy()
]
