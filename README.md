This repository is designed to keep my dotfiles synced across machines.
Usage is simple: clone the repo and symlink the dotfiles to the appropriate locations.
Here's an example for my vimrc:
```
cd ~
git clone https://github.com/fditraglia/dotfiles.git
ln -s ~/dotfiles/vimrc ~/.vimrc
```
Use the same procedure for bashrc etc. Note that you MUST run the above with the full file paths to ensure that the symbolic links are set up correctly. In other words, the following will *not* work as expected:
```
cd dotfiles
ln -s vimrc ~/.vimrc
```
You may want to backup any original dotfiles first, should they already exist.
