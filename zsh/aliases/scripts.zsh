SCRIPTS="$HOME/Developer/Scripts"

# Custom Scripts
alias dot="$SCRIPTS/Bash/dot-launcher/dot.sh"
alias gpt="$SCRIPTS/Bash/cli-gpt/cli-gpt.sh -m=gpt-4"
alias gptj="gpt -s=jp"

function jc() {
    p="$1"
    gptj -p="$p"
}
