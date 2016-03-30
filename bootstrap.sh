export DEBIAN_FRONTEND=noninteractive
sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get -y install vim tmux autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev software-properties-common python-software-properties
sudo apt-add-repository -y ppa:git-core/ppa
sudo apt-get update
sudo apt-get install -y git
git clone https://github.com/monban/dotfiles
bash $HOME/dotfiles/install.sh
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
rbenv install 2.3.0
rbenv global 2.3.0
gem update --system -N
gem install -N bundler
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
