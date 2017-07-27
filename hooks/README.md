# Git Hooks

This project contains a set of git hooks.

## Installation

To install the hooks execute the following script:

```
$ ./copy-hooks <repo>
```

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
