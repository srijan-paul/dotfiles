# Dotfiles

My terminal, shell and editor configuration files.
Currently, I use:

- [Kitty](https://sw.kovidgoyal.net/kitty/) (sometimes Ghostty)
- [Neovim](https://neovim.io/)
- [Fish shell](https://fishshell.com/)

## Installation

1. Clone the repo into a directory called "dotfiles", and then:

  ```sh
  cd dotfiles
  mkdir -p ~/.config
  ln -s $(pwd)/nvim    $HOME/.config/nvim
  ln -s $(pwd)/kitty   $HOME/.config/kitty
  ln -s $(pwd)/fish    $HOME/.config/fish
  ```

2. Install neovim and launch, Lazy should install all plugins by itself.
   Restart for the config to take effect.

3. Install a [Nerd font](https://www.nerdfonts.com/) if you want file-icons to render right in `NeoTree`

4. If you try to launch kitty at this point, 
   you may get some errors when the terminal tries to load the config.
   This is because it's unable to find the themes.

5. Run `./kitty-themes-clone.sh` to initialize the kitty themes.
   Make sure this is done **from the root of the dotfiles project**.

