# export PATH=$HOME/bin:/usr/local/bin:$PATH
PATH=/Users/srijan-paul/Downloads/love.app/Contents/MacOS/:$PATH
PATH=/Users/srijan-paul/personal/snap/build/:$PATH
PATH=/Users/srijan-paul/.cargo/bin:$PATH
PATH=/Applications/Neovide.app/Contents/MacOS:$PATH
PATH=/opt/homebrew/bin:$PATH
PATH=/usr/local/opt/make/libexec/gnubin:$PATH
PATH=/Applications/WezTerm.app/Contents/MacOS:$PATH
PATH=/Users/srijan-paul/google-cloud-sdk/bin:$PATH
PATH=/Users/srijan-paul/go/bin:$PATH
PATH=/Applications/love.app/Contents/MacOS:$PATH
PATH=/Users/srijan-paul/zig:$PATH
PATH=/Users/srijan-paul/.cabal/bin:$PATH
PATH=/Users/srijan-paul/jdk-21.0.1+12/Contents/Home/bin:$PATH

. "/Users/srijan-paul/secrets.sh"

export ZSH="/Users/srijan-paul/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#  themes: skaro, edvardm, gozilla, mgutz , wuffers(z?), agnoster, robbyrussell, xiong-chiamiov, half-life
ZSH_THEME="gozilla"

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

alias zshconfig="mate ~/.zshrc"
alias gc="git commit -m"
alias gcs="git commit -S -m"
alias ga="git add"
alias gp="git push"
alias pm="podman"
alias zbr="zig build run"

export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export VYSE_PATH="/Users/srijan-paul/personal/snap/build"
alias ghci-core="ghci -ddump-simpl -dsuppress-idinfo \
-dsuppress-coercions -dsuppress-type-applications \
-dsuppress-uniques -dsuppress-module-prefixes"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/srijan-paul/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/srijan-paul/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/srijan-paul/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/srijan-paul/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f "/Users/srijan-paul/.ghcup/env" ] && source "/Users/srijan-paul/.ghcup/env" # ghcup-env

# pnpm
export PNPM_HOME="/Users/srijan-paul/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/srijan-paul/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/srijan-paul/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/srijan-paul/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/srijan-paul/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# bun completions
[ -s "/Users/srijan-paul/.bun/_bun" ] && source "/Users/srijan-paul/.bun/_bun"
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"

# fnm setup
eval $(fnm env)
export CPLUS_INCLUDE_PATH="${CPLUS_INCLUDE_PATH:+${CPLUS_INCLUDE_PATH}:}/opt/homebrew/include"
export LIBRARY_PATH="$LIBRARY_PATH:/opt/homebrew/lib"

