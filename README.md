# vimrc

A helpful vimrc that uses vundle to install/manage a few plugins

# Example Usage

1: install vundle: https://github.com/gmarik/Vundle.vim
```
vagrant@precise32:~$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
Cloning into '/home/vagrant/.vim/bundle/Vundle.vim'...
remote: Counting objects: 2805, done.
remote: Total 2805 (delta 0), reused 0 (delta 0)
Receiving objects: 100% (2805/2805), 834.42 KiB | 593 KiB/s, done.
Resolving deltas: 100% (946/946), done.
```
2: make ~/tmp dir
```
vagrant@precise32:~$ mkdir ~/tmp
```
3: Then this repo:
```
vagrant@precise32:~$ git clone https://github.com/nbla/vimrc.git
Cloning into 'vimrc'...
...
vagrant@precise32:~$ ln -s .vimrc vimrc/.vimrc
vagrant@precise32:~$ ls -la
...
drwxr-xr-x 3 vagrant vagrant 4096 Feb  1 18:31 vimrc/
lrwxrwxrwx 1 vagrant vagrant   12 Feb  1 18:32 .vimrc -> vimrc/.vimrc
vagrant@precise32:~$
```
