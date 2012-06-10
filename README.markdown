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

Usage
-----

    rake install       # Install the dotfiles as symlinks in $HOME directory
      Prompt answers: [y]es, [n]o, [a]ll, [q]uit
    rake mac:devtools  # Remove XCode and install GCC
    rake mac:setup     # Setup Mac OS X
