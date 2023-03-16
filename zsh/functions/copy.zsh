# !/bin/sh

# copy function that copies either the first argument to clipboard
# or arguments piped to it
copy() {
  if [ -n "$1" ]; then
    # Copy the first argument to the clipboard
    printf '%s' "$1" | xclip -selection clipboard
  else
    # Copy piped content to the clipboard
    xclip -selection clipboard
  fi
}