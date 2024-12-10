function fish_greeting 
	echo (set_color yellow; echo "(Orc peon voice)"; set_color normal) work work...
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set --export EDITOR nvim

# Alias for git commands
alias gc "git commit"
alias gcm "git commit -m"
alias gcs "git commit -S"
alias gp "git push"

alias ghci-core="ghci -ddump-simpl -dsuppress-idinfo \
-dsuppress-coercions -dsuppress-type-applications \
-dsuppress-uniques -dsuppress-module-prefixes"


# Zig version manager
set --export ZVM_INSTALL "$HOME/.zvm/self"
fish_add_path "$HOME/.zvm/bin"
fish_add_path "$ZVM_INSTALL"
fish_add_path "$HOME/.local/bin"

# NodeJS (...yeah)
fish_add_path "$HOME/node/bin"

