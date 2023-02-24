# Dotfiles

My terminal, shell and editor configuration files.
Currently, I use:

- [Kitty](https://sw.kovidgoyal.net/kitty/)
- [Neovim](https://neovim.io/)
- [zsh](https://www.zsh.org/)
- [OhMyZsh](https://ohmyz.sh/)


## Installation

1. Clone the repo into a directory called "dotfiles", and then:

  ```sh
  cd dotfiles
  mkdir -p ~/.config
  link -s coc ~/.config/coc
  link -s nvim ~/.config/nvim
  link -s kitty ~/.config/kitty
  link -s .zshrc ~/.zshrc
  ```

2. If you try to launch kitty at this point, you may get some errors when the terminal tries to load the config.
  This is because it's unable to find the themes.

3. You need to execute `./kitty-themes-clone.sh` to initialize the kitty themes.
  Make sure this is done **from the root of the dotfiles project**.

4. After this, you'll need to install [vim-plug](https://github.com/junegunn/vim-plug).
   Once done, open `dotfiles/nvim/init.vim`, and execute a `:PlugInstall` command.

