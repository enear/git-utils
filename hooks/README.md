# Git Hooks

This project contains a set of git hooks.

## Installation

Perhaps the best way to install is to use git initialization template.

```bash
# Create a git init template directory
$ mkdir -p ~/.git_template/hooks

# Clone this project anywhere
$ git clone https://github.com/enear/git-utils.git

# Copy the hooks to the git init template directory
$ cd git-utils/hooks
$ cp -r post-commit post-commit.d ~/.git_template/hooks

# Define your git init templates directory globally (i.e., for all repositories)
$ git config --global init.templatedir ~/.git_template

```

This will guarantee that the hooks will be copied every time a git repository
is initialized. If you already have a git repository without the hooks simply
reinitialize the repository.

```bash
# Reinitializes an existing the repository
$ git init

# The hooks should have copied into '.git/hooks'
$ ls .git/hooks
post-commit
post-commit.d
```

Of course you may copy the hooks manually to each repository as well.

## Details

This section details each hook.

### Post Commit

Outputs warnings after a commit.

#### Readme

Outputs a warning if a `README.md` file does not exist in Maven projects. 

#### Changelog

Outputs a warning if a `CHANGELOG.md` file does not exist in Maven projects or
if a commit did not update the change log when modifications to the respective
project occurred.
