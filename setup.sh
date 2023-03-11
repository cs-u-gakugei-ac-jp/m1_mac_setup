#!/usr/bin/sh

# keyboard settings
# キーボードのリピートについて設定されるのでやりたい人だけコメントアウトを外して実行してくださいな
#echo "# keyboard settings"
#defaults write -g InitialKeyRepeat -int 10
#defaults write -g KeyRepeat -int 1

# https://brew.sh/index_ja
echo "# install brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "# install iTerm2"
brew install --cask iterm2

# https://www.vim.org://www.vim.org/
echo "# install vim"
brew install vim

echo "# install trash"
brew install trash

# https://dev.mysql.com/downloads/installer/
echo "# install mysql"
brew install mysql

# https://redis.io/topics/quickstart
echo "# install redis"
brew install redis

# https://www.mycli.net/
echo "# install mycli"
brew install mycli

# https://www.postgresql.org/
echo "# install postgresql"
brew install postgresql

# https://github.com/jonas/tig
echo "# install tig"
brew install tig

echo "# install reattach-to-user-namespace"
brew install reattach-to-user-namespace

# https://github.com/junegunn/fzf
echo "# install fzf"
brew install fzf

# https://github.com/motemen/ghq
echo "# install ghq"
brew install ghq

echo "# install pyenv"
brew install pyenv

# https://golang.org/
echo "# install goenv"
git clone https://github.com/syndbg/goenv.git ~/.goenv
echo 'export GOENV_ROOT="$HOME/.goenv"'
echo 'export PATH="$GOENV_ROOT/bin:$PATH"'
echo 'eval "$(goenv init -)"'

echo "# install go"
goenv install 1.17.2
goenv global 1.17.2
goenv rehash

# https://www.ruby-lang.org/ja/
echo "# install rbenv / ruby-build"
brew install rbenv ruby-build

echo "# install ruby"
rbenv install 3.1.1
rbenv global 3.1.1
rbenv rehash

echo "# install tmux"
brew install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/nhdaly/tmux-scroll-copy-mode ~/clone/path

# https://fishshell.com://fishshell.com/
echo "# install fish"
brew install fish

echo "# fish settings"
mkdir ~/.config
mkdir ~/.config/fish
touch ~/.config/fish/config.fish
echo "source ~/m1_mac_setup/settings/.config.fish" >> ~/.config/fish/config.fish
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.config/fish/config.fish
echo 'eval (/opt/homebrew/bin/brew shellenv)'

echo "# install fisherman"
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisherman
curl -L http://get.oh-my.fish | fish
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

echo "# change default shell"
sudo sh -c "echo '/opt/homebrew/bin/fish' >> /etc/shells"
chsh -s /opt/homebrew/bin/fish
/opt/homebrew/bin/fish

echo "# install fisherman plugin"
fisher install rbenv pyenv fzf decors/fish-ghq

# おそらくここで一旦切れる
#<<COMMENTOUT

echo "# omf install / set theme"
omf install agnoster
fisher omf/theme-agnoster
git clone https://github.com/dracula/iterm.git ~/m1_mac_setup/settings/dracula
open ~/m1_mac_setup/settings/dracula/Dracula.itermcolors
git clone https://github.com/powerline/fonts.git ~/m1_mac_setup/settings/powerline
sh ~/m1_mac_setup/settings/powerline/install.sh

echo "# install google-chrome"
brew install --cask google-chrome

echo "# install slack"
brew install --cask slack

echo "# install TablePlus"
brew install --cask tableplus

echo "# install MySQL Workbench"
brew install --cask mysqlworkbench

echo "# install Virtual Box"
brew install --cask virtualbox

echo "# install vagrant"
brew install --cask vagrant

echo "# install Docker"
#read -p "Docker ID は作成した?:  " yn
#case "$yn" in [yY]*) ;; *) echo "abort." ; exit ;; esac
brew install docker
brew install --cask docker
#COMMENTOUT

echo "# install gcloud"
curl https://sdk.cloud.google.com | bash
exec -l $SHELL
gcloud init
