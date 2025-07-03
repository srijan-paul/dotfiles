function fish_greeting 
	echo (set_color yellow; echo "(Orc peon voice)"; set_color normal) work work…
end

function fish_prompt
	echo (set_color blue; whoami; set_color normal)\
		   (set_color yellow; pwd | awk -v home="$HOME" '{gsub(home, "~"); print}'; set_color normal)\
	     "\$ "
end

# If nvim is installed, set it as the default editor.
if type -q nvim
    set --export EDITOR nvim
end

# Alias for git commands
alias gc "git commit"
alias gcm "git commit -m"
alias gcs "git commit -S"
alias gp "git push"
alias gs "git status"

# Zig version manager: ~/.zvm
if test -d "$HOME/.zvm"
    set --export ZVM_INSTALL "$HOME/.zvm/self"
    fish_add_path "$HOME/.zvm/bin"
    fish_add_path "$ZVM_INSTALL"
    fish_add_path "$HOME/.local/bin"
end


# NodeJS
if test -d "$HOME/node"
    fish_add_path "$HOME/node/bin"
end

# Lean
if test -d "$HOME/.elan"
    fish_add_path "$HOME/.elan/bin"
end 

# Haskell toolchain
if test -d "$HOME/.ghcup"
    fish_add_path "$HOME/.ghcup/bin"
    # "ghci-core" launches GHCi with options that print the GHC Core
    # IR for every line entered in the REPL.
    alias ghci-core="ghci -ddump-simpl -dsuppress-idinfo \
    -dsuppress-coercions -dsuppress-type-applications \
    -dsuppress-uniques -dsuppress-module-prefixes"
end

if test (uname) = "Linux"
    # Linux config: Desktop at home and anything I ssh into.

    set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/injuly/.ghcup/bin

    # PNPM: this part was added by the pnpm installer.
    set -gx PNPM_HOME "/home/injuly/.local/share/pnpm"
    if not string match -q -- $PNPM_HOME $PATH
      set -gx PATH "$PNPM_HOME" $PATH
    end
else
    # MacOS config: for my personal laptop and work device.

    fish_add_path /opt/homebrew/bin
    set -x FNM_PATH "$HOME/Library/Application Support/fnm"
    fish_add_path "$FNM_PATH"
    
    # Local OCCT install directory.
    if test -d "$HOME/code/OCCT" 
        set -x OCCT_RESOURCE_PATH $HOME/code/occt/build/install/share/opencascade/resources
        set -x OCCT_SHARE_PATH $HOME/code/occt/build/install/share
        set -x DYLD_LIBRARY_PATH $HOME/code/occt/build/install/lib
        fish_add_path "$HOME/code/OCCT/build/install/bin"
    end

    # PNPM: this part was added by the pnpm installer.
    set -gx PNPM_HOME "/Users/srijan/Library/pnpm"
    if not string match -q -- $PNPM_HOME $PATH
      set -gx PATH "$PNPM_HOME" $PATH
    end

end

# Added by volta installer (i think).
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# Jam: a WIP js toolchain I'm working on.
set --export JAM_TESTS_262_DIR "$HOME/code/test262-parser-tests"

