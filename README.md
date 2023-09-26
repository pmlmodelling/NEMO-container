# NEMO-container

Repo containing instruction for creating a [singularity container](https://sylabs.io/guides/3.5/user-guide/introduction.html) for NEMO-ERSEM. The setup is based heavily apon the [CoNES repo](https://github.com/NOC-MSM/CoNES) .

## Getting started

The NEMO-ERSEM container utilises [Singularity Deploy](https://github.com/singularityhub/singularity-deploy) which builds the container via [Github Actions](https://github.com/features/actions) to automatically create the container to download. 

## Adapting and updating the container 

For certain projects and applications it might be necessary to use a customise NEMO-ERSEM installation. This can be done with the following steps:

1. Clone the repository via `git clone git@github.com:pmlmodelling/NEMO-container.git NEMO_container_[project_name]` where `[project_name]` is the name of the project
2. Create a branch with the project name `git checkout -b [project_name]`
3. Update `fabm.def` and `nemo.def` as need for the project
4. Push the branch back to the repository and this will automatically trigger the container to by built
5. The built container will be saved into the release in the repository under the project name
