# vim-config

 *Mostly stolen (shamelessly) from: https://github.com/lrbecker/vimconfig/*

Contains two configuration files:

* .vsvimrc - Contains settings that are compatible with [jaredpar/VsVim](https://github.com/jaredpar/VsVim).

* .vimrc - Contains everything else.  Sources the above file.
 
## Installation

Link the .vimrc file:

		mklink %USERPROFILE%/.vim/.vimrc %USERPROFILE%/.vimrc

Link the .vsvimrc file:

		mklink %USERPROFILE%/.vim/.vsvimrc %USERPROFILE%/.vsimrc

Use Vundle to install the Bundles:

		vim +BundleInstall! +BundleClean +q

Grab and install the **Inconsolata-dz** patched font for Powerline:

<https://gist.github.com/1595572>

## What's packed in this:

### Package Manager

#### [vundle](https://github.com/gmarik/vundle)
Vundle, the plug-in manager for Vim


Name	     |  Desc                                       | Bindings
------------ | ------------------------------------------- | ------------
[airline](https://github.com/bling/vim-airline) | lean & mean status/tabline for vim that's light as air |
[fugitive](https://github.com/tpope/vim-fugitive) | fugitive.vim: a Git wrapper so awesome, it should be illegal
[syntastic](https://github.com/scrooloose/syntastic) | Syntax checking hacks for vim
[nerdcommenter](https://github.com/scrooloose/nerdcommenter) | The premier commenting tool. | `c<space>`
