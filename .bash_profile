#export PATH=/usr/local/etc/php/:"${PATH}"

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
# export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# BEGIN SNIPPET: Platform.sh CLI configuration
HOME=${HOME:-'/Users/nmishare'}
# export PATH="$HOME/"'.platformsh/bin':"$PATH"
# if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi # END SNIPPET

alias platform="~/.platformsh/bin/platform"

# platform.sh sortcuts
alias sh="cd ~/Documents/WWW/_dev/platform.sh/"
alias shm="platform checkout master"
alias prs="rsync -av  $(platform ssh --pipe -e production):docroot/sites/default/files/ docroot/sites/default/files/"
alias srs="rsync -av docroot/sites/default/files/ $(platform ssh --pipe):docroot/sites/default/files/"
alias pdb="platform sql-dump -z -e production -f varian-production.sql.gz && gzip -d -f varian-production.sql.gz && platform sql < varian-production.sql"
alias pl="platform environments"

# VD8 project
alias vd8="cd ~/Documents/WWW/_dev/platform.sh/varian-drupal-8"
alias ldr="lando drush"
