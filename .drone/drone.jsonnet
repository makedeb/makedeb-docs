local buildAndDeploy() = {
  name: "build-and-deploy",
  kind: "pipeline",
  type: "docker",
  volumes: [{name: "web_root", host: {path: "/var/www/docs.makedeb.org/"}}],
  steps: [
    {
      name: "generate-docs",
      image: "python",
      volumes: [{name: "web_root", path: "/var/www/docs.makedeb.org/"}],
      commands: [
        "pip install -r requirements.txt",
        "mkdocs build --strict --site-dir '/var/www/docs.makedeb.org/'"
      ]
    }
  ]
};

[
  buildAndDeploy()
]
