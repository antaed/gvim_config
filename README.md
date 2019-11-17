# My gVim for Windows config

![screenshot](https://repository-images.githubusercontent.com/221772262/3b133600-08e1-11ea-9918-69150027f6ef)

This repository contains my gVim configuration process for a new Windows computer, it is based on my own work flow as a web developer (in PHP, JavaScript, HTML, CSS) and it includes:

* my **gvimrc** file
* **vimfiles** directory containing various customization files including my own theme, snippets, syntax highlighting, etc.
* script to add [Vim Renamer](https://github.com/qpkorr/vim-renamer) to Windows Explorer context menu
* script to remap CapsLock to Ctrl/Esc
* script to replace the Vim icon
* the font of my choice

**Disclaimer**\
*I created this repository for my own needs and I highly recommend that you check it thoroughly before installing it on your system. I am not responsible if something goes wrong, so use at your own risk.*


## INSTALLATION

### Step 1 - Install prequisites

* [gVim](https://github.com/vim/vim-win32-installer/releases)
* [Chocolatey](https://chocolatey.org/install)
* [Node.js](https://nodejs.org/en/)
* [ctags](https://github.com/universal-ctags/ctags-win32/releases)
* [AutoHotKey](https://www.autohotkey.com/)

Run `choco install -y ripgrep make`\
Add *C:\Users\\%username%\ctags* to PATH\
Add *C:\Program Files (x86)\Vim\vim81* to PATH


### Step 2 - Prepare $HOME directory

```
$ cd %USERPROFILE%  
$ mkdir .backups\.backup .backups\.swp .backups\.undo ctags gutentags
$ git clone git@github.com:antaed/gvim_config.git vimfiles
$ git clone https://github.com/k-takata/minpac.git ^ vimfiles\pack\minpac\opt\minpac
$ echo "runtime gvimrc" > _gvimrc
```
* Copy contents of ctags download to \ctags
* Install one of the font variants from *$HOME\vimfiles\antaed*
* Create shortcut of *$HOME\vimfiles\antaed\CapsLockCtrlEscape.ahk* and move it to *C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup*
* Run *$HOME\vimfiles\pack\minpac\start\vim-renamer\doc\AddVimRenamerToContextMenu.bat*
* Run *$HOME\vimfiles\antaed\SetVimIcon.bat* as administrator


### Step 3 - Install plugins

* `:call minpac#update()` 
* `:call coc#util#install()`


### Step 4 - Set gVim as git mergetool

```
$ C:\Program Files (x86)\Vim\vim81\install.exe: n, d
$ git config --global merge.tool diffconflicts
$ git config --global mergetool.diffconflicts.cmd "gvim -c DiffConflicts \"$MERGED\" \"$BASE\" \"$LOCAL\" \"$REMOTE\""
$ git config --global mergetool.diffconflicts.trustExitCode true
$ git config --global mergetool.keepBackup false
```

<br/>

### [Go to MacVim version](https://github.com/antaed/macvim_config)

