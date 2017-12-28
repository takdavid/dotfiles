/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/versions
find /Library/Python/         -print0 | xargs -0 sudo chgrp staff
find /Library/Python/         -print0 | xargs -0 sudo chmod g+w
find /Library/Python/ -type d -print0 | xargs -0 sudo chmod g+x

easy_install virtualenv
brew install pyenv-virtualenv
brew install pyenv-virtualenvwrapper

brew install python3
pip3 install --upgrade pip setuptools
pip3 install numpy
pip3 install matplotlib
pip3 install pandas
pip3 install seaborn
pip3 install jupyter

xcode-select --install
sudo xcodebuild -license accept

brew install macvim

brew install node
npm install -g bower

brew unlink gnupg2 gpg-agent dirmngr
brew install gnupg21
ln -s /usr/local/bin/gpg2 /usr/local/bin/gpg
brew install pinentry-mac
brew install pass
echo "source /usr/local/etc/bash_completion.d/password-store" >> ~/.bashrc

brew install intltool icu4c
brew link icu4c gettext --force
CFLAGS=-I/usr/local/opt/icu4c/include LDFLAGS=-L/usr/local/opt/icu4c/lib pip3 install pyicu
