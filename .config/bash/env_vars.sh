# A set of environent variables for different programs so that the home
# directory is not polluted. Used chatgpt for future-proofing and added
# several programs not even installed, so expect some hallucination.

# Path
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.local/scripts:$PATH"
export PATH

# Editor
export EDITOR=nvim

# Git PS1
GIT_PS1_SHOWCONFLICTSTATE=yes
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_STATESEPARATOR=" "

# Some GUI config for Dank Material Shell
QT_QPA_PLATFORMTHEME=qt6ct

# XDG Base Directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.local/cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# Cargo
export CARGO_HOME=$XDG_DATA_HOME/cargo
export RUSTUP_HOME=$XDG_DATA_HOME/rustup

# Go
export GOPATH=$XDG_DATA_HOME/go
export GOBIN=$HOME/.local/bin
export GOCACHE=$XDG_CACHE_HOME/go-build

# NPM, PNPM and Node
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NPM_CONFIG_CACHE=$XDG_CACHE_HOME/npm
export NPM_CONFIG_PREFIX=$HOME/.local
export PNPM_HOME=$XDG_CACHE_HOME/pnpm
export BUN_INSTALL=$XDG_DATA_HOME/bun

# Python, Pip and VirtualEnv
export PYTHONUSERBASE=$XDG_DATA_HOME/python
export PIP_CACHE_DIR=$XDG_CACHE_HOME/pip
export VIRTUALENVWRAPPER_HOOK_DIR=$XDG_DATA_HOME/python/virtualenvwrapper
export WORKON_HOME=$XDG_DATA_HOME/python/venvs

# Java, Kotlin, Gradle and Maven
export GRADLE_USER_HOME=$XDG_DATA_HOME/gradle
export M2_HOME=$XDG_DATA_HOME/maven
export MAVEN_OPTS="-Dmaven.repo.local=$XDG_DATA_HOME/m2"
export KONAN_DATA_DIR=$XDG_DATA_HOME/konan

# Ruby, Gem and Bundler
export GEM_HOME=$XDG_DATA_HOME/gem
export GEM_PATH=$XDG_DATA_HOME/gem
export BUNDLE_PATH=$XDG_DATA_HOME/bundle

# Perl and CPAN
export PERL_CPANM_OPT="--local-lib=$XDG_DATA_HOME/perl"
export PERL5LIB=$XDG_DATA_HOME/perl/lib/perl5

# Haskell, Cabal and Stack
export CABAL_DIR=$XDG_DATA_HOME/cabal
export STACK_ROOT=$XDG_DATA_HOME/stack

# C and C++ Package Managers
export CONAN_USER_HOME=$XDG_DATA_HOME/conan
export VCPKG_ROOT=$XDG_DATA_HOME/vcpkg

# SDKs and Frameworks
export ANDROID_HOME=$XDG_DATA_HOME/android
export ANDROID_SDK_ROOT=$XDG_DATA_HOME/android
export DART_HOME=$XDG_DATA_HOME/dart
export FLUTTER_ROOT=$XDG_DATA_HOME/flutter
export JENV_ROOT=$XDG_DATA_HOME/jenv
export GVM_ROOT=$XDG_DATA_HOME/gvm
export ASDF_DATA_DIR=$XDG_DATA_HOME/asdf

# Cloud and DevOps
export AWS_CONFIG_FILE=$XDG_CONFIG_HOME/aws/config
export AWS_SHARED_CREDENTIALS_FILE=$XDG_CONFIG_HOME/aws/credentials
export AZURE_CONFIG_DIR=$XDG_CONFIG_HOME/azure
export CLOUDSDK_CONFIG=$XDG_CONFIG_HOME/gcloud
export DOCKER_CONFIG=$XDG_CONFIG_HOME/docker
export KUBECONFIG=$XDG_CONFIG_HOME/kube/config
export TF_PLUGIN_CACHE_DIR=$XDG_CACHE_HOME/terraform
export ANSIBLE_HOME=$XDG_CONFIG_HOME/ansible
export HELM_HOME=$XDG_DATA_HOME/helm
export MINIKUBE_HOME=$XDG_DATA_HOME/minikube
export PACKER_CACHE_DIR=$XDG_CACHE_HOME/packer

# Other Dev Tools
export POETRY_CACHE_DIR=$XDG_CACHE_HOME/pypoetry
export HELM_HOME=$XDG_DATA_HOME/helm
export JUPYTER_CONFIG_DIR=$XDG_CONFIG_HOME/jupyter
export GRPC_HOME=$XDG_DATA_HOME/grpc
export HOMEBREW_CACHE=$XDG_CACHE_HOME/homebrew
export NUGET_PACKAGES=$XDG_DATA_HOME/nuget
export MIX_HOME=$XDG_DATA_HOME/mix
export HEX_HOME=$XDG_DATA_HOME/hex
export GIT_CONFIG_GLOBAL=$XDG_CONFIG_HOME/git/config

# Containerization and Virtualization
export PODMAN_HOME=$XDG_DATA_HOME/podman
export VAGRANT_HOME=$XDG_DATA_HOME/vagrant
export LIBVIRT_DEFAULT_URI=qemu:///system

# AI, ML and Data Tools
export HF_HOME=$XDG_DATA_HOME/huggingface
export TRANSFORMERS_CACHE=$XDG_CACHE_HOME/transformers
export TORCH_HOME=$XDG_DATA_HOME/torch
export WANDB_DIR=$XDG_DATA_HOME/wandb
export MLFLOW_HOME=$XDG_DATA_HOME/mlflow
export KERAS_HOME=$XDG_DATA_HOME/keras

# Editors, IDEs and Linters
export CODE_USER_DATA_DIR=$XDG_DATA_HOME/vscode
export EDITORCONFIG_HOME=$XDG_CONFIG_HOME/editorconfig
export PRETTIERD_CACHE=$XDG_CACHE_HOME/prettierd
export BLACK_CACHE_DIR=$XDG_CACHE_HOME/black

# Misc
export HISTFILE=$XDG_STATE_HOME/bash/history
export LESSHISTFILE=$XDG_CACHE_HOME/lesshst
export PYENV_ROOT=$XDG_DATA_HOME/pyenv
export NVM_DIR=$XDG_DATA_HOME/nvm
export ZDOTDIR=$XDG_DATA_HOME/zsh
