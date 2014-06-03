# vim-config

 *Mostly stolen (shamelessly) from: https://github.com/lrbecker/vimconfig/*

Contains two configuration files:

* .vsvimrc - Contains settings that are compatible with [jaredpar/VsVim](https://github.com/jaredpar/VsVim).

* .vimrc - Contains everything else.  Sources .vsvimrc.
 
## Installation

Link the .vimrc file

		ln -s ~/.vim/.vimrc ~/.vimrc

Link the .vsvimrc file

		ln -s ~/.vim/.vimrc ~/.vimrc

Use Vundle to install the Bundles.

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
