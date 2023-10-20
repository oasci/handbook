# Managing environments

TODO:

## Installing miniconda

Instructions can be found [here](https://docs.conda.io/projects/miniconda/en/latest/).
However, they are repeated below for completeness.

=== "Windows"

    TODO:

=== "Mac"

    TODO:

===+ "Linux"

    ```bash
    mkdir -p ~/miniconda3 \ # (1)!
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh \ # (2)!
    bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3 \ # (3)!
    rm -rf ~/miniconda3/miniconda.sh # (4)!
    ```

    1. Creates a `miniconda3` directory in the user's home directory.
    2. Downloads the latest [miniconda installer](https://docs.conda.io/projects/miniconda/en/latest/index.html#latest-miniconda-installer-links) into the `miniconda3` directory.
    3. Runs the `miniconda.sh` bash script for automated installation.
    4. Cleans up all installation files.

### libmamba-solver

Although not mandatory, we strongly recommend using the [libmamba-solver](https://conda.github.io/conda-libmamba-solver/).
This can be installed with the following command.

```bash
conda install -n base conda-libmamba-solver
```

This give you a single-use option when installing packages.
For example, we can install [TensorFlow](https://www.tensorflow.org/) while using [`libmamba`](https://conda.github.io/conda-libmamba-solver/) as our dependency solver.

```bash
conda install tensorflow --solver=libmamba
```

Alternatively, you can set [`libmamba`](https://conda.github.io/conda-libmamba-solver/) to be the default solver.

```bash
conda config --set solver libmamba
```
