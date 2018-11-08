# Unix
alias tlf='tail -f'

# Apps
alias skype='sudo /Applications/Skype.app/Contents/MacOS/Skype'
alias wthr='curl http://wttr.in/redwood_city'

# Git
# Remove all branches except master and current
alias gbda='git branch | egrep -v "(master|\*)" | xargs git branch -D'
# Show my stats
alias gstats='git log --author="Maxim Derbin" --pretty=tformat: --numstat | awk '\''{ add += $1; subs += $2; loc += $1 - $2 } END { printf "added lines: %s, removed lines: %s, total lines: %s\n", add, subs, loc }'\'''

glt() {
  git log $1..HEAD --no-merges --pretty=format:"%C(yellow)%h %Cblue%>(12)%ad %Cgreen%<(7)%aN%Cred%d %Creset%s"
}
