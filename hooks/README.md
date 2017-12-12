# Git Hooks

This project contains a set of git hooks.

## Installation

Perhaps the best way to install is to use git initialization template.

```bash
# Defines your git init templates directory
git config --global init.templatedir ~/.git_template

# Copy the hooks to your init template directory
mkdir ~/.git_template/hooks
cp -r * ~/.git_template/hooks
```

This will guarantee that the hooks will be copied every time a git repository
is initialized. If you already have a git repository without the hooks simply
reinitialize the repository.

```bash
# Reinitializes an existing the repository
git init
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
