#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# utility to interact with Accessibility support from command line
# (needed also to complete install of atext, avira and ... )
#  COMMENTED AS DOES NOT ALLOW CHANGES SINCE SIERRA
# brew install tccutil

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2


brew install caskroom/cask/brew-cask
# brew tap caskroom/cask # !!! ERROR HERE ?

## Generic utilities
# command line json editor
brew install jq
brew install awscli
brew cask install keka

# npm environment manager
brew install nvm
# http test tool (curl-like)
brew install httpie

# file system watch and execute command on file change
brew install fswatch



# how to add licence number?
brew cask install atext
brew cask install tomighty

brew cask install macdown && ./addDockIcon.sh "MacDown"
brew cask install google-chrome && ./addDockIcon.sh "Google Chrome"
brew cask install firefox && ./addDockIcon.sh "Firefox"
# brew cask slack !!! ERROR HERE ?
brew cask install slack && ./addDockIcon.sh "Slack"
brew cask install authy && ./addDockIcon.sh "Authy Desktop"
brew cask install iterm2 && ./addDockIcon.sh "iTerm"
brew cask install atom && ./addDockIcon.sh "Atom"

# brew cask install virtualbox-extension-pack
# brew cask install docker

brew cask install dropbox
brew cask install google-backup-and-sync

# office related
brew cask install onedrive
brew cask install microsoft-office


# DEV tools
# Attention: this installs latest Oracle java (10.x currently), requires password
brew cask install java
brew install maven
brew cask install intellij-idea-ce && ./addDockIcon.sh "IntelliJ IDEA CE"



# DG end

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;



# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
# brew install screen
# brew install homebrew/php/php56 --with-gmp

# # Install font tools.
# brew tap bramstein/webfonttools
# brew install sfnt2woff
# brew install sfnt2woff-zopfli
# brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
# brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install xpdf
# brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
# brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
# brew install zopfli



# failed on first install & requires password
brew cask install virtualbox
# requires extra consent in Security & Privacy panel
brew cask install avira-antivirus
# requires password
brew cask install tunnelblick




# Remove outdated versions from the cellar.
brew cleanup
