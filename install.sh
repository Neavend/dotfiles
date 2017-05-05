#!/bin/sh
#Updated by nSimon

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ -d "/afs" ]; then
  rmdir "$HOME/Desktop" 2>> /dev/null
  ln -s "$AFS_DIR/Downloads" "$HOME/Downloads"
fi

dot_list="bashrc config emacs gitconfig gitignore jupyter mozilla msmtprc muttrc slrnrc tmux.conf vimperator vimperatorrc vim vimrc Xdefaults Xresources zshrc"

for f in $dot_list; do
  rm -rf "$HOME/.$f"
  ln -s "$DIR/$f" "$HOME/.$f"
done
