# Unix
alias tlf="tail -f"

# Apps
alias skype="sudo /Applications/Skype.app/Contents/MacOS/Skype"
alias wthr="curl http://wttr.in/redwood_city"

# Git
# Remove all branches except master and current
alias gbda='git branch | egrep -v "(master|\*)" | xargs git branch -D'
