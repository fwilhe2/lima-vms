#!/bin/bash
set -eux -o pipefail
git config --global user.name "Florian Wilhelm"
git config --global user.email "52838694+fwilhe2@users.noreply.github.com"
echo "
alias ls='ls --group-directories-first --time-style=+\"%Y-%m-%d %H:%M\" --color=auto --classify'
alias ll='ls -lh'
alias la='ls -lah'
alias lh=la

# Git aliases - based on http://www.catonmat.net/blog/git-aliases/
alias g=git
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gm='git commit'
alias gb='git branch'
alias gc='git checkout'
alias gci='git commit'
alias gcl='git clone'" >> ~/.bashrc

git config --global alias.st status
git config --global alias.co checkout
git config --global alias.rb rebase
git config --global alias.ci commit
git config --global alias.br branch
git config --global alias.cp cherry-pick
git config --global alias.fa 'fetch --all'
git config --global alias.lg 'log --graph --decorate --pretty=oneline --abbrev-commit'
git config --global alias.ls 'log --decorate --pretty=oneline --abbrev-commit'
git config --global credential.helper store
