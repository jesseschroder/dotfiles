• Install iterm2

• Install brew

• Install oh-my-zsh

• Install tmux

• Install pure prompt

• Install zsh-syntax-highlighting

• Install something for tmux auto session


```
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> ~/.zshrc
echo ".cfg" >> .gitignore
git clone --bare git@github.com:jesseschroder/dotfiles.git $HOME/.cfg
config checkout
config config --local status.showUntrackedFiles no
```

If checkout doesn't work, rename conflict files.
