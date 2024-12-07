# Dotfiles

My terminal, shell and editor configuration files.
Currently, I use:

- [Kitty](https://sw.kovidgoyal.net/kitty/)
- [Neovim](https://neovim.io/)
- [zsh](https://www.zsh.org/) (migrating to `fish`)
- [OhMyZsh](https://ohmyz.sh/)


## Installation

1. Clone the repo into a directory called "dotfiles", and then:

  ```sh
  cd dotfiles
  mkdir -p ~/.config
  ln -s $(pwd)/coc     $HOME/.config/coc/
  ln -s $(pwd)/nvim    $HOME/.config/nvim/
  ln -s $(pwd)/kitty   $HOME/.config/kitty/
  ln -s $(pwd)/fish    $HOME/.config/fish/
  ln -s $(pwd)/.zshrc  $HOME/.zshrc/
  ```

2. Install neovim and [packer.nvim](https://github.com/wbthomason/packer.nvim),
   then go to `./nvim/lua/injuly/packer.lua`, open `nvim`, and run `:so` and `:PackerInstall`.
   Restart neovim for the plugins to take effect.

3. Install a [Nerd font](https://www.nerdfonts.com/) if you want file-icons to render right in `NeoTree`

4. If you try to launch kitty at this point, 
   you may get some errors when the terminal tries to load the config. This is because it's unable to find the themes.

5. You need to execute `./kitty-themes-clone.sh` to initialize the kitty themes.
   Make sure this is done **from the root of the dotfiles project**.

6. After this, you'll need to install [vim-plug](https://github.com/junegunn/vim-plug).
   Once done, open `dotfiles/nvim/init.vim`, and execute a `:PlugInstall` command.


