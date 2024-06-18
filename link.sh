#!/bin/sh

# ドットファイルのシンボリックリンクの作成
DOT_DIRECTORY="$HOME/gpuaas"
BACKUP_DIRECTORY="$HOME/.backup/gpuaas"

cd $(dirname $0)

mkdir -p $BACKUP_DIRECTORY

for f in .??*; do
    if [ "$f" = ".git" ]; then
        continue
    fi

    if [ -e $HOME/$f ] && [ ! -L $HOME/$f ]; then
        mv $HOME/$f $BACKUP_DIRECTORY
    fi
    ln -snfv $DOT_DIRECTORY/$f $HOME/$f
done

rmdir -p $BACKUP_DIRECTORY 2>/dev/null

# データのシンボリックリンクの作成
ln -nfs /data ~/data

# minicondaのインストール
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sh Miniconda3-latest-Linux-x86_64.sh

conda init zsh
source .zshrc

# zshのインストール
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install zsh
zsh
