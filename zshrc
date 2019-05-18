export TERM="xterm-256color"
POWERLEVEL9K_MODE='nerdfont-complete'
source  ~/powerlevel9k/powerlevel9k.zsh-theme


# Prompts
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user dir nvm node_version vcs)
else
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user dir node_version vcs)
fi
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status aws root_indicator battery time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_DELIMITER=..
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0B4'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\uE0B6'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰\uF460\uF460\uF460 "

# Custom segment "now playing"
# POWERLEVEL9K_CUSTOM_NOW_PLAYING='~/.dotfiles/bin/nowplaying'

# Colors
POWERLEVEL9K_NODE_VERSION_BACKGROUND=107
POWERLEVEL9K_NODE_VERSION_FOREGROUND='white'
# POWERLEVEL9K_CUSTOM_NOW_PLAYING_BACKGROUND='blue'
# POWERLEVEL9K_CUSTOM_NOW_PLAYING_FOREGROUND='black'
POWERLEVEL9K_OS_ICON_BACKGROUND='white'
POWERLEVEL9K_OS_ICON_FOREGROUND='black'
POWERLEVEL9K_TIME_BACKGROUND='white'
POWERLEVEL9K_TIME_FOREGROUND='black'

# Battery colors
POWERLEVEL9K_BATTERY_CHARGING='107'
POWERLEVEL9K_BATTERY_CHARGED='blue'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='50'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='blue'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='white'
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='107'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='white'
POWERLEVEL9K_BATTERY_LOW_BACKGROUND='red'
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='white'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='white'
POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='214'

# VCS colors
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='cyan'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='white'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='red'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'

# Customise the Powerlevel9k prompts
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
#   custom_medium dir vcs newline status
# )
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
# POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# # Add the custom Medium M icon prompt segment
# POWERLEVEL9K_CUSTOM_MEDIUM="echo -n $'\uF859'"
# POWERLEVEL9K_CUSTOM_MEDIUM_FOREGROUND="black"
# POWERLEVEL9K_CUSTOM_MEDIUM_BACKGROUND="white"
# POWERLEVEL9K_MODE='awesome-patched'
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(nvm node_version status)

# POWERLEVEL9K_OS_ICON_BACKGROUND="white"
# POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
# POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"


# POWERLEVEL9K_MODE='nerdfont-complete'
# ZSH_THEME="powerlevel9k/powerlevel9k"

# POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
# POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
# POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
# POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"

# POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
# POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="000"
# POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="007"
# # POWERLEVEL9K_DIR_HOME_BACKGROUND="001"
# # POWERLEVEL9K_DIR_HOME_FOREGROUND="000"
# # POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="001"
# # POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="000"
# POWERLEVEL9K_NODE_VERSION_BACKGROUND="black"
# POWERLEVEL9K_NODE_VERSION_FOREGROUND="007"
# POWERLEVEL9K_NODE_VERSION_VISUAL_IDENTIFIER_COLOR="002"
# POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="black"
# POWERLEVEL9K_LOAD_WARNING_BACKGROUND="black"
# POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="black"
# POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="007"
# POWERLEVEL9K_LOAD_WARNING_FOREGROUND="007"
# POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="007"
# POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
# POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
# POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"
# POWERLEVEL9K_RAM_BACKGROUND="black"
# POWERLEVEL9K_RAM_FOREGROUND="007"
# POWERLEVEL9K_RAM_VISUAL_IDENTIFIER_COLOR="001"
# POWERLEVEL9K_RAM_ELEMENTS=(ram_free)
# POWERLEVEL9K_TIME_BACKGROUND="black"
# POWERLEVEL9K_TIME_FOREGROUND="007"
# POWERLEVEL9K_TIME_FORMAT="%D{%H:%M} %F{003}\uF017"
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=('os_icon' 'dir' 'vcs')
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=('node_version' 'load' 'ram_joined' 'time')
# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B0'
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0B2'
source $HOME/antigen.zsh
# Antigen
# source ~/.antigen/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle aws
antigen bundle brew
antigen bundle docker
antigen bundle git
antigen bundle gradle
antigen bundle ssh-agent
antigen bundle tmux
antigen bundle kubectl

antigen bundle skywind3000/z.lua
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle caarlos0/zsh-git-sync
# antigen theme bhilburn/powerlevel9k powerlevel9k

antigen apply

eval "$(hub alias -s)"

eval "$(rbenv init -)"
eval `fnm env`

fpath=(~/.zsh/completions $fpath) 
autoload -U compinit && compinit

# aliases
alias zc='z -c'      # restrict matches to subdirs of $PWD
alias zz='z -i'      # cd with interactive selection
alias zf='z -I'      # use fzf to select in multiple matches
alias zb='z -b'      # quickly cd to the parent directory
alias k='kubectl'
alias kd='k --namespace=development'
alias ks='k --namespace=staging'
alias kp='k --namespace=production'
alias kdp='kd get pods'
alias kdn='kd get nodes'
alias kds='kd get svc'
alias kdd='kd get deployments'
alias kstaging='k config use-context staging.k8s.betterpt.com'
alias kdev='k config use-context development.k8s.betterpt.com'
alias kprod='k config use-context production.k8s.betterpt.com'
alias lc='colorls -lA --sd --gs'

alias git='hub'

alias newts='git clone git@github.com:krzkaczor/ts-boilerplate.git'
alias proxyon='networksetup -setsocksfirewallproxystate wi-fi on'
alias proxyoff='networksetup -setsocksfirewallproxystate wi-fi off'

# scripts
source ~/.functions

# recommended by brew doctor
export PATH="~/.rbenv/shims:$HOME/bin:/usr/local/bin:$HOME/.bin:$HOME/.local/bin:$HOME/src/k8s-node-new/istio-1.0.6/bin:/usr/bin:$HOME/pear/bin:$HOME/.rbenv/shims/ruby:$HOME/.cargo/bin:/usr/local/share/python:/usr/bin/python:/usr/local/share/nmap:/Users/damianesteban/flutter/bin:/Users/damianesteban/.gem/ruby/2.5.0/bin:$PATH"
export GPG_TTY=$(tty)
eval "$(rbenv init - --no-rehash)"
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/src/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`

export AWS_DEFAULT_PROFILE="prod"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"
# add Pulumi to the PATH
export PATH=$PATH:$HOME/.pulumi/bin
export GOOGLE_APPLICATION_CREDENTIALS="/Users/damianesteban/.config/gcloud/application_default_credentials.json"
# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh
export PATH="$PATH:/Users/damianesteban/.microclimate"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export PATH=$HOME/.deno/bin:$PATH
export PATH="$HOME/.deno/denoget/bin:$PATH"
if [[ -f "$(brew --prefix)/opt/mcfly/mcfly.bash" ]]; then
  source "$(brew --prefix)/opt/mcfly/mcfly.bash"
fi
# opam configuration
test -r /Users/damianesteban/.opam/opam-init/init.zsh && . /Users/damianesteban/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

source $(dirname $(gem which colorls))/tab_complete.sh


# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/damianesteban/.nvm/versions/node/v9.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/damianesteban/.nvm/versions/node/v9.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/damianesteban/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/damianesteban/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/damianesteban/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/damianesteban/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# tabtab source for jiractl package
# uninstall by removing these lines or running `tabtab uninstall jiractl`
[[ -f /usr/local/lib/node_modules/@godaddy/jiractl/node_modules/tabtab/.completions/jiractl.zsh ]] && . /usr/local/lib/node_modules/@godaddy/jiractl/node_modules/tabtab/.completions/jiractl.zsh

export PATH=/Users/damianesteban/.local/bin:$PATH
export PATH="/usr/local/opt/libiconv/bin:$PATH"


# k8s
export KUBECONFIG=$KUBECONFIG:~/.kube/config-development
export KOPS_STATE_STORE=s3://k8s.betterpt.com
export NAME=development.k8s.betterpt.com
