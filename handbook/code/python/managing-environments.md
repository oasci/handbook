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
    mkdir -p ~/miniconda3 \
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh \
    bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3 \
    rm -rf ~/miniconda3/miniconda.sh
    ```

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
