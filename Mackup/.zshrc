# ZPlug
export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

SPACESHIP_DOCKER_SHOW=false
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_SWIFT_SHOW_LOCAL=false

zplug "zplug/zplug", hook-build:"zplug --self-manage"
# zplug "denysdovhan/spaceship-zsh-theme", use:spaceship.zsh, from:github, as:theme
zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug "robbyrussell/oh-my-zsh", use:"lib/*.zsh", from:github
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/yarn", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting", from:github, defer:2
zplug "zsh-users/zsh-autosuggestions"
if zplug check zsh-users/zsh-autosuggestions; then
  ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(history-substring-search-up history-substring-search-down) # Add history-substring-search-* widgets to list of widgets that clear the autosuggestion
  ZSH_AUTOSUGGEST_CLEAR_WIDGETS=("${(@)ZSH_AUTOSUGGEST_CLEAR_WIDGETS:#(up|down)-line-or-history}") # Remove *-line-or-history widgets from list of widgets that clear the autosuggestion to avoid conflict with history-substring-search-* widgets
fi

# zplug "psprint/zsh-navigation-tools", as:plugin
# autoload znt-history-widget
# zle -N znt-history-widget
# bindkey "^R" znt-history-widget
# zle -N znt-cd-widget
# bindkey "^B" znt-cd-widget
# zle -N znt-kill-widget
# bindkey "^Y" znt-kill-widget

zplug "zsh-users/zsh-history-substring-search"
if zplug check zsh-users/zsh-history-substring-search; then
  zmodload zsh/terminfo
  bindkey "^[[A" history-substring-search-up
  bindkey "^[[B" history-substring-search-down
fi

zplug "supercrabtree/k"
zplug "djui/alias-tips"
zplug "maxmellon/yarn_completion"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Load plugins
zplug load

# Customize to your needs...
export PATH=/usr/local/sbin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin

LC_ALL=en_US.UTF-8
LC_CTYPE=en_US.UTF-8

export EDITOR='subl --wait -n'

alias st='subl -n'
alias lt='tree -CA'
alias gd="git diff -- ':!package-lock.json' ':!yarn.lock'"
alias zshrc="subl ~/.zshrc"

# zstyle ':completion:*' hosts off

# export GITHUB_TOKEN=$(cat $HOME/.github_token)
export HOMEBREW_GITHUB_API_TOKEN=$(cat $HOME/.github_token)

# Default language
export LANG=en_US.UTF-8

# Support for two Homebrew installations
export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"
alias ibrew='arch -x86_64 /usr/local/bin/brew'

# Resolve to the Local /node_modules/.bin
export PATH="${PATH}:./node_modules/.bin"
export PATH="$HOME/.yarn/bin:$PATH"

# Initialize NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Make Puppeteer work on M1 Mac
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=`which chromium`

# Symlink node@16
export PATH="/opt/homebrew/opt/node@16/bin:$PATH"
