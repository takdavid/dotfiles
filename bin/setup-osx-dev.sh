/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
find /Library/Python/         -print0 | xargs -0 sudo chgrp staff
find /Library/Python/         -print0 | xargs -0 sudo chmod g+w
find /Library/Python/ -type d -print0 | xargs -0 sudo chmod g+x

easy_install virtualenv
brew install pyenv-virtualenv
brew install pyenv-virtualenvwrapper

brew install python3
pip3 install --upgrade pip setuptools

xcode-select --install
brew install macvim

brew install node
npm install -g bower

pip3 install numpy
pip3 install matplotlib
pip3 install pandas
pip3 install seaborn
pip3 install jupyter
