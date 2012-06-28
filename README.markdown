Dotfiles
========

Installation process based on [Ryan Bates Dot Files](http://github.com/ryanb/dotfiles/) and
[Karel Minarik Dot Files](http://github.com/karmi/dotfiles/).

Installation
------------

With Git:

    git clone git://github.com/abulava/dotfiles ~/dotfiles
    cd ~/dotfiles
    rake install

Without Git:

    cd $HOME
    mkdir -p dotfiles
    curl -# -L -k https://github.com/abulava/dotfiles/tarball/master | tar xz --strip 1 -C dotfiles
    cd dotfiles
    rake install

Prerequisites for "rake mac:setup"
----------------------------------

Mac OS X 10.7.2: run "rake mac:devtools" or [OSX GCC Installer](https://github.com/kennethreitz/osx-gcc-installer/)

Mac OS X 10.7.3 and later: install [Command Line Tools for Xcode](https://developer.apple.com/downloads/index.action)

Usage
-----

    rake install       # Install the dotfiles as symlinks in $HOME directory
      Prompt answers: [y]es, [n]o, [a]ll, [q]uit
    rake mac:devtools  # Remove XCode and install GCC (obsolete on Mac OS X 10.7.3+)
    rake mac:setup     # Setup Mac OS X
