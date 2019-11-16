# gVim Config

This is my vim configuration on **Windows**

<br/>

## Step 1

Install:
* [gVim](https://github.com/vim/vim-win32-installer/releases)
* [chocolatey](https://chocolatey.org/install)
* [nodejs](https://nodejs.org/en/)
* [ctags](https://github.com/universal-ctags/ctags-win32/releases)
* [autohotkey](https://www.autohotkey.com/)
* Input font

<br/>

## Step 2

Run `choco install -y ripgrep make`\
Add *C:\Users\%username%\ctags* to PATH\
Copy autohotkey script to *C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup*

<br/>

## Step 3

Inside $HOME directory:
* Create folder structure (...)
* Copy contents of ctags to /ctags
```
cd %USERPROFILE%  
git clone git@github.com:antaed/gvim_config.git vimfiles
```

<br/>

## Step 4

Run:
* *$HOME\vimfiles\pack\minpac\start\vim-renamer\doc\AddVimRenamerToContextMenu.bat*
* *$HOME\SetVimIcon.bat* as administrator
* `:call minpac#update()` and restart gVim
* `:call coc#util#install()`

<br/>
