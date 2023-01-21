# dotfiles

En attendant de faire un beau `Makefile`, je prends des notes ici.

## bootstrap

```
sudo apt install stow
```

## installation des environnements

```
xargs -a packages/base.txt sudo apt-get install
xargs -a packages/gaming.txt sudo apt-get install
```

## dotfiles

```
stow nvim
```

