#!/bin/bash

tmp_name=$HOME/dot-vim$$

function pull {
  _PWD=$(pwd)
  cd $HOME/.vim/bundle
  rm ../plugin-list.txt
  for d in *; do
    if [ -d $d ]; then
      cd $d
      git remote -v show | head -1 | awk '{print $2}'
      cd ..
    fi
  done > ../plugin-list.txt

  cd $HOME
  tar --exclude="*bundle*" -cf $tmp_name .vim .vimrc .gvimrc

  cd $_PWD
  tar xf $tmp_name
  rm $tmp_name
}

function push {
  tar cvf $tmp_name.tar .vimrc .gvimrc .vim
  cd $HOME
  tar cvf $tmp_name-backup.tar .vimrc .gvimrc .vim
  tar xvf $tmp_name.tar
  rm $tmp_name.tar
  echo "Backup made in $tmp_name-backup.tar"
}

function bundle_up {
  cd $HOME/.vim/bundle
  for i in *; do
  if [ -d $i ]; then
    echo "Updating $i..."
    (cd $i && git pull)
  else
    git clone $i
  fi
done
}

if [ "$1" == "pull" ]; then
  pull
elif [ "$1" == "push" ]; then
  push
elif [ "$1" == "up" ]; then
  bundle_up
else
  echo "I do not know what you want. Master."
fi
