#!/bin/sh

# データのシンボリックリンクの作成
ln -nfs /data $HOME/project

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

# zshのインストール
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install zsh
echo "zsh" >>$HOME/.bashrc

# uvのインストール
curl -LsSf https://astral.sh/uv/install.sh | sh

# screenのインストール
sudo apt-get install screen

# gitの設定
git config --global user.email kosyamada0526@gmail.com
git config --global user.name Kosuke-Yamada

zsh
