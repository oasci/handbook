# Local build

We use a combination of [`conda`](https://conda.io/) and [`poetry`](https://python-poetry.org/).
Each on its own is more than enough; however, we often want to use packages that are only available in `conda`.
Mixing environment manages like `conda` and `poetry` must be done with care.
This usually involves install all desired `conda` packages and then using only poetry afterwards.
If you want to use a new `conda` package down the road, you normally need to recreate the environment from scratch.

## Steps

### Installing conda

If you do not have `conda` installed, follow the instructions [here](https://docs.conda.io/projects/miniconda/en/latest/#quick-command-line-install).

!!! note

    We recommend using [`libmamba`](https://conda.github.io/conda-libmamba-solver/getting-started/) instead of [`mamba`](https://mamba.readthedocs.io/en/latest/) or [classic `conda`](https://conda.github.io/conda-libmamba-solver/libmamba-vs-classic/).

### Conda environment

First, we setup a `conda` environment inside the repository (`.venv`).

```bash
make conda-setup
```

Now we install our desired conda packages in one of two ways.

=== "From `conda-lock.yml`"

    This will install the exact same packages we use to develop this package.

    ```bash
    make from-conda-lock
    ```

=== "From scratch"

    With this procedure, you can install any `conda` packages desired.
    First, activate the conda environment.

    ```bash
    conda activate ./.venv
    ```

    Add all relevant conda channels so they are exported to `environment.yml`.
    For example, we can add `conda-forge`.

    ```bash
    conda config --add channels conda-forge
    ```

    Install all desired packages; for example,

    ```bash
    conda install -c conda-forge mkdocs
    ```

    If needed, write a new `conda-lock` file.

    ```bash
    make write-conda-lock
    ```

### Poetry-tracked packages

After installing all `conda` packages, we switch over to exclusively using `poetry`.
The following command uses `poetry` to install all packages specified in `pyproject.toml`.

```bash
make install
```

### Add packages

To add dependencies using the `poetry add` command, you need to first activate the conda environment.

```bash
conda activate ./.venv
```

Now you can run any `poetry` commands within the local `conda` environment.
For example, we can add numpy as a dependency:

```bash
poetry add numpy
```

After making any changes to `pyproject.toml` you need to write a new `poetry.lock` file.

```bash
make lock-poetry
```

Remember to deactivate the `conda` environment once you are done.

```bash
conda deactivate
```

### `pre-commit`

TODO:

```bash
make pre-commit-install
```
