# Cheat sheet

## Configuration

```{bash}
# if the 'Filename too long' occurs
git config --system core.longpaths true
```

## Switch branch

### Git

```{bash}
# Create and switch to a branch with the same name as the given remote reference
git checkout --track <remote> (e.g., origin/feature/issue201)
```

### Git Flow

```{bash}
# Create and switch to a branch with the same name as the given origin branch
git flow feature track <feature-name> (e.g., issue201)
```
