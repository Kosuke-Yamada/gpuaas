#!/bin/zsh

# execute command
# -------------------

# Visual Studio Code :: Package list
pkglist=(
aaron-bond.better-comments
bceskavich.theme-dracula-at-night
usernamehw.errorlens
pkief.material-icon-theme
ms-ceintl.vscode-language-pack-ja
tushortz.python-extended-snippets
kevinrose.vsc-python-indent
ms-vscode-remote.remote-ssh
tomoki1207.pdf
njpwerner.autodoc
dzhavat.bracket-pair-toggler
streetsidesoftware.code-spell-checker
mhutchie.git-graph
donjayamanne.githistory
codezombiech.gitignore
eamodio.gitlens
oderwat.indent-rainbow
zainchen.json
ms-toolsai.jupyter
ms-toolsai.jupyter-renderers
ms-kubernetes-tools.vscode-kubernetes-tools
ms-vsliveshare.vsliveshare
davidanson.vscode-markdownlint
ionutvmi.path-autocomplete
christian-kohler.path-intellisense
ms-python.python
mgesbert.python-path
njqdev.vscode-python-typehint
ms-vscode-remote.vscode-remote-extensionpack
ms-vscode.remote-explorer
mechatroner.rainbow-csv
charliermarsh.ruff
foxundermoon.shell-format
richie5um2.vscode-sort-json
tyriar.sort-lines
shardulm94.trailing-spaces
redhat.vscode-yaml
ms-azuretools.vscode-docker
ms-python.python
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done
