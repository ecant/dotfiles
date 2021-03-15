# zsh
```
brew install coreutils
brew install zsh
chsh -s /usr/local/bin/zsh
```

# iterm
Download and install [iTerm 2](https://www.iterm2.com/) 

Install the font file located at $HOME/dotfiles/iterm.

In iterm, set `zsh` to be your default shell. Go to Preferences -> Profiles and select the Default profile. Then under General -> Command enter `/usr/local/bin/zsh`

Then set solarized colors. On the same Default profile, select Colors -> Color Presets -> Import. Select the itermcolors file at $HOME/dotfiles/iterm.

Then on the Text menu, select the "Meslo LG M for Powerline" font you just installed earlier.

# oh my zsh
Install the oh-my-zsh plugin manager for zsh. 
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

# Make sym links
This assumes you have cloned the dotfiles repo to your `$HOME/dotfiles` directory.
```
  mv $HOME/.vimrc $HOME/.vimrc.backup
  mv $HOME/.zshrc $HOME/.zshrc.backup
  mv $HOME/.vim $HOME/.vim.backup
  ln -s $HOME/dotfiles/vimrc.vim $HOME/.vimrc
  ln -s $HOME/dotfiles/zshrc.zsh $HOME/.zshrc
  ln -s $HOME/dotfiles/vim.symlink $HOME/.vim
```

# final steps
* Restart iTerm
* Run `setupsolarized` to configure the zsh-dircolors-solarized plugin

