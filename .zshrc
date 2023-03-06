# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/Users/srijan-paul/Downloads/love.app/Contents/MacOS/:$PATH
export PATH=/Users/srijan-paul/personal/snap/build/:$PATH
export PATH=/Users/srijan-paul/.cargo/bin:$PATH
export PATH=/Applications/Neovide.app/Contents/MacOS:$PATH
export PATH=/opt/homebrew/bin:$PATH
export PATH=/usr/local/opt/make/libexec/gnubin:$PATH
export PATH=/Applications/WezTerm.app/Contents/MacOS:$PATH


# Path to your oh-my-zsh installation.
export ZSH="/Users/srijan-paul/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# # themes: skaro, edvardm, gozilla, mgutz , wuffers(z?), agnoster, robbyrussell, xiong-chiamiov, half-life
ZSH_THEME="half-life"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export GITHUB_TOKEN="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"
export EICH_TOKEN="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"
export ZEAL_SECRET="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"
export APP_PATH="/Users/srijan-paul/work/marvin-javascript/build"
export CODE_PATH="/Users/srijan-paul/work/test-repos/focalboard"
export TOOLBOX_PATH="/Users/srijan-paul/work/toolbox"
export GPG_TTY=$(tty)

#[ -f "/Users/srijan-paul/.ghcup/env" ] && source "/Users/srijan-paul/.ghcup/env" # ghcup-env
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
export COSMOS_DB_SECRET_URI="mongodb://natourdb:Z8U3jvnXNlRTNzyU0PMTIoVz6HEx2xdngFcVGKdKEBvXHSe4l6wDLqbhwx3ziKgfdRmwC4nqCQDlYjkNPv64wg==@natourdb.mongo.cosmos.azure.com:10255/?ssl=true&replicaSet=globaldb&retrywrites=false&maxIdleTimeMS=120000&appName=@natourdb@"
export VYSE_PATH="/Users/srijan-paul/personal/snap/build"
export AUDIT_PY_PATH="/Users/srijan-paul/work/hackday/audit-tui/audit_me.py"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/srijan-paul/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/srijan-paul/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/srijan-paul/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/srijan-paul/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
# eval `luarocks path`

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f "/Users/srijan-paul/.ghcup/env" ] && source "/Users/srijan-paul/.ghcup/env" # ghcup-env
