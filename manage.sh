#!/bin/bash
tmp_name=$HOME/dot-vim$$

# pull vim env from $HOME to current directory
function pull {
  _PWD=$(pwd)
  cd $HOME/.vim/bundle
  rm ../plugin-list.txt
  for d in *; do
    if [ -d $d ]; then
      (cd $d && git remote -v show | head -1 | awk '{print $2}')
    fi
  done | sort > ../plugin-list.txt

  cd $HOME
  tar --exclude="*bundle*" -cf $tmp_name .vim .vimrc .gvimrc

  cd $_PWD
  tar xf $tmp_name
  rm $tmp_name
}

# push vim env from current directory to $HOME, also backup $HOME
function push {
  tar cf $tmp_name.tar .vimrc .gvimrc .vim
  cd $HOME
  tar cf $tmp_name-backup.tar .vimrc .gvimrc .vim
  tar xf $tmp_name.tar
  rm $tmp_name.tar
  echo "Backup made in $tmp_name-backup.tar"
}

# git pull everything from $HOME/.vim/bundle
function bundle_up {
  cd $HOME/.vim
  if [ ! -d bundle ]; then
    mkdir bundle
  fi
  cd bundle
  cat ../plugin-list.txt | while read line; do
    _dir=$(basename $line | sed -e 's/\.git$//g')
    if [ -d $_dir ]; then
      echo "Updating $_dir"
      (cd $_dir && git pull)
    else
      git clone $line
    fi
  done
}

# diff current directory and $HOME
function _diff {
    diff .vimrc ~/.vimrc
    diff .gvimrc ~/.gvimrc
    diff -r .vim ~/.vim
}

if [ "$1" == "pull" ]; then
  pull
elif [ "$1" == "push" ]; then
  push
elif [ "$1" == "up" ]; then
  bundle_up
elif [ "$1" == "diff" ]; then
  _diff
else
  echo "I do not know what you want. Master."
fi
