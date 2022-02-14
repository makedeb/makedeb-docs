# Setting up your local system
To test changes to the documentation, you'll need to first install the needed dependencies onto your system.

## Installing needed dependencies
You'll need Python 3 and pip to successfully run the remaining of the setup instructions.

**NOTE:**   
Make sure you've already forked and cloned the repository to your local system.

It's recommended that you first create a Python virtual environment, which will keep all dependencies used for the project isolated from the rest of your system:

```sh
python -m venv env/
```

Regardless of whether you did the previous step, you'll now need to actually install the dependencies:

```sh
pip install -r ./requirements.txt
```

# Making changes
To test changes to the documentation locally, simply run the following in the root of the repository:

```sh
mkdocs serve
```

Sources for documentation are contained in the `docs/` folder. If you create or delete markdown files in that folder, make sure to update the navigation listing in `mkdocs.yml` under the `# Navigation menu` section.

# Getting help
If you have any trouble or questions with contributing, always try searching your problem first, as someone else may have already gone through your problem and found a solution.

If that doesn't work though, feel free to make an issue, or join [#makedeb-contributing:hunterwittenborn.com](https://matrix.to/#/#makedeb-contributing:hunterwittenborn.com) on Matrix.
