# vim-config

 *Mostly stolen (shamelessly) from: https://github.com/lrbecker/vimconfig/*

Contains two configuration files:

* .vsvimrc - Settings that are compatible with [jaredpar/VsVim](https://github.com/jaredpar/VsVim).

* .vimrc - Everything else.  Sources the above file.
 
## Installation

Link the .vimrc file:

		mklink "%USERPROFILE%/.vimrc" "%USERPROFILE%/.vim/.vimrc"

Link the .vsvimrc file:

		mklink "%USERPROFILE%/.vsvimrc" "%USERPROFILE%/.vim/.vsvimrc"

Link the .vim folder:

		mklink /D "%USERPROFILE%/vimfiles" "%USERPROFILE%/.vim"

Install vim-plug:

		mkdir "%USERPROFILE%/.vim/autoload"
		curl -fLo "%USERPROFILE%/.vim/autoload/plug.vim" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

Use vim-plug to install the Bundles:

		vim +PlugInstall +PlugClean

Grab and install the **Inconsolata-dz** patched font for Powerline:

<https://gist.github.com/1595572>

## What's packed in this:

### Package Manager

#### [vim-plug](https://github.com/junegunn/vim-plug)
A minimalist plugin manager.


Name	     |  Desc                                       | Bindings
------------ | ------------------------------------------- | ------------
[airline](https://github.com/bling/vim-airline) | Lean & mean status/tabline for vim that's light as air.
[fugitive](https://github.com/tpope/vim-fugitive) | A Git wrapper so awesome, it should be illegal.
[syntastic](https://github.com/scrooloose/syntastic) | Syntax checking hacks for vim
[nerdcommenter](https://github.com/scrooloose/nerdcommenter) | The premier commenting tool.
[gotham](https://github.com/whatyouhide/vim-gotham) | Code never sleeps in Gotham City.
