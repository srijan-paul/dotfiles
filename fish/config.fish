function fish_greeting 
	echo (set_color yellow; echo "(Orc peon voice)"; set_color normal) work work...
end

function fish_prompt
	echo (set_color blue; whoami; set_color normal)\
		   (set_color yellow; pwd | awk -v home="$HOME" '{gsub(home, "~"); print}'; set_color normal)\
	     "\$ "
end


set --export EDITOR nvim

# Alias for git commands
alias gc "git commit"
alias gcm "git commit -m"
alias gcs "git commit -S"
alias gp "git push"
alias gs "git status"

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
fish_add_path /opt/homebrew/bin

if test(uname) = "Linux"
    # GHCUP
    set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /home/injuly/.ghcup/bin
    # pnpm
    set -gx PNPM_HOME "/home/injuly/.local/share/pnpm"
    if not string match -q -- $PNPM_HOME $PATH
      set -gx PATH "$PNPM_HOME" $PATH
    end
    # pnpm end
else
    # gchup
    # Honestly, ghcup takes up WAY too much space (~5G on a fresh install).
    fish_add_path "$HOME/.ghcup/bin/"

    # fnm (for switching between nodejs versions)
    set -x FNM_PATH "$HOME/Library/Application Support/fnm"
    fish_add_path "$FNM_PATH"
    eval $(fnm env)
end


set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

if test (uname) = "Darwin"
    # Gcloud stuff
    # Gcloud SDK (For prasso)
    fish_add_path "$HOME/.yen/bin"
    fish_add_path "$HOME/third-party/google-cloud-sdk/bin"
    # The next line updates PATH for the Google Cloud SDK.
    if [ -f '/Users/injuly/third-party/google-cloud-sdk/path.fish.inc' ]
        . "/Users/injuly/third-party/google-cloud-sdk/path.fish.inc"
    end

    set -gx CLOUDSDK_PYTHON "$HOME/.yen_pythons/3.11.11/python/bin/python3"
    # Helper scripts for prasso work
    fish_add_path "$HOME/prasso/utils"
end

if type -q go
    fish_add_path $(go env GOPATH)
    fish_add_path $(go env GOPATH)/bin
end

set --export JAM_TESTS_262_DIR "$HOME/code/test262-parser-tests"

