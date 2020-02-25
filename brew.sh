#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
# brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
# brew install gnu-sed --with-default-names
# Install a modern version of Bash.
brew install bash
brew install bash-completion2
# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;


## Development utilities
##############################################
brew install jq                     # command line json editor
brew install awscli                 # AWS command line interface
brew install ctop                   # top for containers https://github.com/bcicen/ctop
brew install nvm                    # npm environment manager
brew install httpie                 # http test tool (curl-like)
brew install fswatch                # file system watch and execute command on file change
brew install fzf                    # Ctrl+R on steroids
# Attention: this installs latest Oracle java (10.x currently), requires password
# brew cask install java
# brew install maven
# brew cask install intellij-idea-ce && ./addDockIcon.sh "IntelliJ IDEA CE"

# yaml/json merger -> https://github.com/geofffranks/spruce
brew tap starkandwayne/cf
brew install spruce
brew install lua

brew cask install docker
# # failed on first install & requires password
# brew cask install virtualbox
# brew cask install virtualbox-extension-pack
# # requires password
# brew cask install tunnelblick

## Generic utilities
##############################################

## Desktop utilities
##############################################

brew cask install keka            # file compressor

# how to add licence number?
brew cask install atext           # Text expander
brew cask install tomighty        # Pomodoro Technique timer

# brew cask install macdown && ./addDockIcon.sh "MacDown"             # Markdown Editor
brew cask install google-chrome && ./addDockIcon.sh "Google Chrome"
brew cask install firefox && ./addDockIcon.sh "Firefox"
brew cask install slack && ./addDockIcon.sh "Slack"
brew cask install authy && ./addDockIcon.sh "Authy Desktop"
brew cask install iterm2 && ./addDockIcon.sh "iTerm"
brew cask install atom && ./addDockIcon.sh "Atom"

brew cask install dropbox
brew cask install google-backup-and-sync

# office related
brew cask install microsoft-office
brew cask install onedrive

# requires extra consent in Security & Privacy panel
brew cask install avira-antivirus





# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
# brew install screen
# brew install php
# brew install gmp

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
brew install gs
brew install imagemagick --with-webp

# brew install lynx
# brew install p7zip
# # brew install pigz
# brew install pv                 # monitor the progress of data through a pipe
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
# brew install vbindiff
# brew install zopfli



# Remove outdated versions from the cellar.
brew cleanup
