# NEMO-container

Repo containing instruction for creating a [singularity container](https://sylabs.io/guides/3.5/user-guide/introduction.html) for NEMO-ERSEM. The setup is based heavily apon the [CoNES repo](https://github.com/NOC-MSM/CoNES) .

## Setup

To create a singularity container, please follow the steps below:

1. Install [Docker](https://docs.docker.com/get-docker/) on host system and create `singularity` executable with `alias singularity='docker run --privileged -it --rm --mount type=bind,source=${PWD},target=/home/singularity quay.io/singularity/singularity:v3.7.3-slim'`
2. Run `singularity build /home/singularity/base_container/baseOS.sif /home/singularity/base_container/baseOS.def`
3. Run `singularity build /home/singularity/fabm.sif /home/singularity/fabm.def`
4. Run `singularity build /home/singularity/xios.sif /home/singularity/xios.def`
5. Run `singularity build /home/singularity/nemo.sif /home/singularity/nemo.def`

---
**NOTE**

Make sure that when you build the `sif` files, you have bound the the correct folders to your container.

---
