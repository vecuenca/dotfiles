# dotfiles

Dotfiles for:

- neovim
- tmux
- zsh

```
I have a dedicated dotfiles directory in $HOME (~/Dotfiles) and it is a git repo. Every config is located in this directory and I just symlink them to their respective places (~/.config, ~/.mozilla, etc.). Here's an example command: ln -s ~/Dotfiles/nvim ~/.config/nvim. There is no need to use any dedicated program to manage dotfiles imo.

If you're concerned about dotfiles littering the home directory, check out the XDG Base Directory Specification and move any supported programs to ~/.config.
```

