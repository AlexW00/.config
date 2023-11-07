SCRIPTS="$HOME/Developer/Scripts"

# Custom Scripts
alias dot="$SCRIPTS/Bash/dot-launcher/dot.sh"
alias gpt="$SCRIPTS/Bash/cli-gpt/cli-gpt.sh -m=gpt-4"
alias jc="gpt -s=jp"
alias je="gpt -s=jpe"
alias ba="gpt -s=ba"
alias baf="gpt -s=baf"
alias tmux-clean="$SCRIPTS/Bash/tmux-clean.sh"
alias cheat="$SCRIPTS/Bash/cheat.sh"

alias cheats="cd $CHEATSHEETS"
alias work="python3 $SCRIPTS/Python/work-time-tracker.py start"
alias work-overview="python3 $SCRIPTS/Python/work-time-tracker.py overview"
alias work-week="python3 $SCRIPTS/Python/work-time-tracker.py week"
alias work-day="python3 $SCRIPTS/Python/work-time-tracker.py today"
alias work-adjust="python3 $SCRIPTS/Python/work-time-tracker.py adjust"
