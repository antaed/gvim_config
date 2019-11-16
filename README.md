# gVim Config

This is my vim configuration on **Windows**

<br/>

## Step 1 - Prequisites

Download and install:
* [gVim](https://github.com/vim/vim-win32-installer/releases)
* [chocolatey](https://chocolatey.org/install)
* [nodejs](https://nodejs.org/en/)
* [ctags](https://github.com/universal-ctags/ctags-win32/releases)
* [autohotkey](https://www.autohotkey.com/)
Run `choco install -y ripgrep make`\
Add *C:\Users\%username%\ctags* to PATH\

<br/>

## Step 2 - Inside $HOME directory

```
cd %USERPROFILE%  
mkdir .backups\.backup .backups\.swp .backups\.undo ctags gutentags
git clone git@github.com:antaed/gvim_config.git vimfiles
echo "runtime gvimrc" > _gvimrc
```
* Run *$HOME\vimfiles\pack\minpac\start\vim-renamer\doc\AddVimRenamerToContextMenu.bat*
* Run *$HOME\vimfiles\antaed\SetVimIcon.bat* as administrator
* Copy contents of ctags download to \ctags
* Create shortcut of *$HOME\vimfiles\antaed\CapsLockCtrlEscape.ahk* and move it to *C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup*
* Install one of the font variants from *$HOME\vimfiles\antaed\*

<br/>

## Step 4 - Inside gVim

* `:call minpac#update()` 
* `:call coc#util#install()`

<br/>
