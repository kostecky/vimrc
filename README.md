vimrc
=====

This .vimrc is a good basic set of utilities to get your vim editor
in to a state that is very useful for developing puppet manifests
and modules. It maintains a set of defaults that I find useful as well.

OS X Installation
=====
1. You first need to install brew

  ```
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```
  
2. You then *need* to install macvim to get the YouCompleteMe plugin 
   working. Dont' worry it comes with a standard non-GUI vim binary
   that we'll link to.

  ```
  brew install macvim
  ```
  
3. Link vim to the macvim non-gui binary

  ```
  cd /usr/local/bin
  ln -s mvim vim
  ln -s mvim vi
  ```

4. Add your ~/.vimrc file from this repo or manually cobble it together.

  ```
  vim ~/.vimrc
  ```

5. Exit vim, reload it and run :BundleInstall

  ```
  vim ~/.vimrc
  :BundleInstall
  ```

6. Once it's done, exit vim and compile YouCompleteMe

  ```
  cd ~/.vim/bundle/YouCompleteMe/
  ./install.sh --clang-completer
  ```
