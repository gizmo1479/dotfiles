# Gizmo1479 Dotfiles

## Requirements

- git
- stow
- nvim
- tmux

## Stow Install

Pull the repo into your $HOME directory

Inside the new directory use GNU stow:

```
$ stow .
```

## Neovim

neovim has its own git repo which is a fork from [kickstart](https://github.com/nvim-lua/kickstart.nvim)

For install, just need to start Neovim and install plguins via `:Lazy`

## Tmux

Couple of tmux plugins are installed, just need to do `<prefix>I` to install them

## Modern Gnu Replacement

If you want to use some GNU util replacements, install the following packages
which already have aliases set

- fd (replaces find)
- rg (replaces grep)
- bat (replaces cat)
- exa (replaces ls)

