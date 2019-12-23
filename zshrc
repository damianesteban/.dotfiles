# export TERM="xterm-256color"
# POWERLEVEL9K_MODE='nerdfont-complete'
# source  ~/powerlevel9k/powerlevel9k.zsh-theme


# # Prompts
# if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
#   POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user dir nvm node_version vcs)
# else
#   POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user dir node_version vcs)
# fi
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status aws kubecontext root_indicator time)
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# POWERLEVEL9K_SHORTEN_DELIMITER=..
# POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR='\uE0B4'
# POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR='\uE0B6'
# POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭"
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰\uF460\uF460\uF460 "

# # Custom segment "now playing"
# # POWERLEVEL9K_CUSTOM_NOW_PLAYING='~/.dotfiles/bin/nowplaying'

# # Colors
# POWERLEVEL9K_NODE_VERSION_BACKGROUND=107
# POWERLEVEL9K_NODE_VERSION_FOREGROUND='white'
# # POWERLEVEL9K_CUSTOM_NOW_PLAYING_BACKGROUND='blue'
# # POWERLEVEL9K_CUSTOM_NOW_PLAYING_FOREGROUND='black'
# POWERLEVEL9K_OS_ICON_BACKGROUND='white'
# POWERLEVEL9K_OS_ICON_FOREGROUND='black'
# POWERLEVEL9K_TIME_BACKGROUND='white'
# POWERLEVEL9K_TIME_FOREGROUND='black'

# # Battery colors
# POWERLEVEL9K_BATTERY_CHARGING='107'
# POWERLEVEL9K_BATTERY_CHARGED='blue'
# POWERLEVEL9K_BATTERY_LOW_THRESHOLD='50'
# POWERLEVEL9K_BATTERY_LOW_COLOR='red'
# POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='blue'
# POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='white'
# POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='107'
# POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='white'
# POWERLEVEL9K_BATTERY_LOW_BACKGROUND='red'
# POWERLEVEL9K_BATTERY_LOW_FOREGROUND='white'
# POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='white'
# POWERLEVEL9K_BATTERY_DISCONNECTED_BACKGROUND='214'

# # VCS colors
# POWERLEVEL9K_VCS_CLEAN_FOREGROUND='cyan'
# POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
# POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='white'
# POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='red'
# POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='black'
# POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'

source $HOME/antigen.zsh

eval "$(starship init zsh)"

antigen use oh-my-zsh
antigen bundle sorin-ionescu/prezto modules/git
antigen bundle aws
antigen bundle brew
antigen bundle docker
# antigen bundle git
antigen bundle ssh-agent
antigen bundle tmux
antigen bundle kubectl
antigen bundle z
antigen bundle osx
antigen bundle skywind3000/z.lua
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle caarlos0/zsh-git-sync

antigen apply

eval "$(hub alias -s)"

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

alias tsbase='echo git clone git@github.com:binxio/cfn-auth0-provider.git'
alias git='hub'

alias newts='git clone git@github.com:krzkaczor/ts-boilerplate.git'
alias proxyon='networksetup -setsocksfirewallproxystate wi-fi on'
alias proxyoff='networksetup -setsocksfirewallproxystate wi-fi off'

alias bubg='brew update && brew upgrade'

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

alias zr='source ~/.zshrc'

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
# scripts
# source ~/.functions

# recommended by brew doctor
export PATH="$HOME/bin:/usr/local/bin:$HOME/.bin:$HOME/.local/bin:$HOME/src/k8s-node-new/istio-1.0.6/bin:/usr/bin:$HOME/pear/bin:$HOME/.rbenv/shims/ruby:$HOME/.cargo/bin:/usr/local/share/python:/usr/bin/python:/usr/local/share/nmap:/Users/damianesteban/flutter/bin:/Users/damianesteban/.gem/ruby/2.6.3/bin:$PATH"
export GPG_TTY=$(tty)
source /usr/local/share/chruby/chruby.sh

export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/src/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`

export AWS_DEFAULT_PROFILE="prod"

export CLOUDFLARE_EMAIL="damian.esteban@gmail.com"

# Kops config
export KUBECONFIG=$KUBECONFIG:~/.kube/config
export KOPS_STATE_STORE=s3://k8s.betterpt.com
export NAME=development.k8s.betterpt.com

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"
# add Pulumi to the PATH
export PATH=$PATH:$HOME/.pulumi/bin
export GOOGLE_APPLICATION_CREDENTIALS="/Users/damianesteban/.config/gcloud/application_default_credentials.json"
# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export PATH=$HOME/.deno/bin:$PATH
export PATH="$HOME/.deno/denoget/bin:$PATH"
#
# opam configuration
test -r /Users/damianesteban/.opam/opam-init/init.zsh && . /Users/damianesteban/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true


# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/damianesteban/.nvm/versions/node/v9.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/damianesteban/.nvm/versions/node/v9.10.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

# tabtab source for jiractl package
# uninstall by removing these lines or running `tabtab uninstall jiractl`
[[ -f /usr/local/lib/node_modules/@godaddy/jiractl/node_modules/tabtab/.completions/jiractl.zsh ]] && . /usr/local/lib/node_modules/@godaddy/jiractl/node_modules/tabtab/.completions/jiractl.zsh

export PATH=/Users/damianesteban/.local/bin:$PATH
export PATH="/usr/local/opt/libiconv/bin:$PATH"
export PATH=$HOME/.kube/config:$PATH

# k8s
# export KUBECONFIG=$KUBECONFIG:~/.kube/config-development
# export KOPS_STATE_STORE=s3://k8s.betterpt.com
# export NAME=development.k8s.betterpt.com
export HOMEBREW_GITHUB_API_TOKEN=54b749640e45304018da4d2b3ddaa57240f1fa69
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

function acp() {
  git add .
  git commit -m "$1"
  git push
}
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/damianesteban/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/damianesteban/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/damianesteban/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/damianesteban/google-cloud-sdk/completion.zsh.inc'; fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH=”/Users/damianesteban/.jenv/bin:/Users/damianesteban/google-cloud-sdk/bin:/usr/local/opt/openssl@1.1/bin:/Users/damianesteban/.kube/config:/usr/local/opt/libiconv/bin:/Users/damianesteban/.local/bin:/Users/damianesteban/.deno/denoget/bin:/Users/damianesteban/.deno/bin:/usr/local/sbin:/Users/damianesteban/.yarn/bin:/Users/damianesteban/.config/yarn/global/node_modules/.bin:/Users/damianesteban/.nvm/versions/node/v10.16.0/bin:/Users/damianesteban/.rbenv/shims:~/.rubies:/Users/damianesteban/bin:/usr/local/bin:/Users/damianesteban/.bin:/Users/damianesteban/.local/bin:/Users/damianesteban/src/k8s-node-new/istio-1.0.6/bin:/usr/bin:/Users/damianesteban/pear/bin:/Users/damianesteban/.rbenv/shims/ruby:/Users/damianesteban/.cargo/bin:/usr/local/share/python:/usr/bin/python:/usr/local/share/nmap:/Users/damianesteban/flutter/bin:/Users/damianesteban/.gem/ruby/2.5.0/bin:/Users/damianesteban/.rbenv/shims:/Users/damianesteban/.cargo/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin:/usr/local/share/dotnet:/opt/X11/bin:~/.dotnet/tools:/Users/damianesteban/.antigen/bundles/robbyrussell/oh-my-zsh/lib:/Users/damianesteban/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/aws:/Users/damianesteban/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew:/Users/damianesteban/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/docker:/Users/damianesteban/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git:/Users/damianesteban/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/ssh-agent:/Users/damianesteban/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/tmux:/Users/damianesteban/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/kubectl:/Users/damianesteban/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/z:/Users/damianesteban/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/osx:/Users/damianesteban/.antigen/bundles/skywind3000/z.lua:/Users/damianesteban/.antigen/bundles/unixorn/autoupdate-antigen.zshplugin:/Users/damianesteban/.antigen/bundles/zsh-users/zsh-autosuggestions:/Users/damianesteban/.antigen/bundles/zsh-users/zsh-completions:/Users/damianesteban/.antigen/bundles/zsh-users/zsh-history-substring-search:/Users/damianesteban/.antigen/bundles/zsh-users/zsh-syntax-highlighting:/Users/damianesteban/.antigen/bundles/caarlos0/zsh-git-sync:/usr/local/opt/go/libexec/bin:/Users/damianesteban/src/go/bin:/Users/damianesteban/.pulumi/bin:/Users/damianesteban/sonar-scanner/bin:$HOME/.cargo/bin:/Users/damianesteban/Downloads/sonar-scanner-4.0.0.1744-macosx/bin”

‘eval “export PATH="/Users/damianesteban/.jenv/shims:${PATH}" export JENV_SHELL=zsh export JENV_LOADED=1 unset JAVA_HOME source '/usr/local/Cellar/jenv/0.5.2/libexec/libexec/../completions/jenv.zsh' jenv rehash 2>/dev/null jenv() { typeset command command="$1" if [ "$#" -gt 0 ]; then shift fi case "$command" in enable-plugin|rehash|shell|shell-options) eval `jenv "sh-$command" "$@"`;; *) command jenv "$command" "$@";; esac }”’
"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
