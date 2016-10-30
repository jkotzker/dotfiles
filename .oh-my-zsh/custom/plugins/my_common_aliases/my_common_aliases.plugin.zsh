## oh-my-zsh plugin for custom aliases

# Edit this file
alias edit_aliases="vim ~/.dotfiles/.oh-my-zsh/custom/plugins/my_common_aliases/my_common_aliases.plugin.zsh"

# alias for configuring zsh shell
alias zshconfig="atom ~/.zshrc"

# osx shortcut functions
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;echo 'DNS cache flushed.'"
alias runscripts="sudo periodic daily weekly monthly"
alias reperms="sudo /usr/libexec/repair_packages --repair --standard-pkgs --volume /"
alias mounted="mount | column -t"
alias lastconnected='defaults read /Library/Preferences/SystemConfiguration/com.apple.airport.preferences | grep LastConnected -A 7'

# osx functionality
alias mute="osascript -e 'set volume output muted true'"
alias lock_screen='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

# better copyimg
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"
alias mvv="rsync -poghb --remove-source-files --backup-dir=/tmp/rsync -e /dev/null --progress --"

# extra scripts
alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
alias imgur-screenshot='imgur-screenshot.sh'
alias wifi='osx-wifi-cli'
alias my_external_ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias update-all='update-all.sh'

# fix permissions of /usr/local on El Capitan
alias fixusr="sudo chown -R $(whoami):admin /usr/local"

# after hosts file update
alias reload-hosts="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

# generate password
alias passgen="openssl rand -base64"

# Navigating
alias ls="ls -GF1"
alias lsl="ls -lAFG1"
alias lsla="ls -lAFGsk"

# END OF ALIASES
