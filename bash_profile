source /etc/bash_completion.d/azds

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.cargo/bin:$PATH"
if [ -e /Users/damianesteban/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/damianesteban/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
