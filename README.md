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

		vim +PlugInstall +PluginClean

Grab and install the **Inconsolata-dz** patched font for Powerline:

<https://github.com/powerline/fonts>

## What's packed in this:

### Package Manager

#### [vim-plug](https://github.com/junegunn/vim-plug)
A minimalist plugin manager.


Name	     |  Desc                                       | Bindings
------------ | ------------------------------------------- | ------------
[airline](https://github.com/bling/vim-airline) | Lean & mean status/tabline for vim that's light as air.
[fugitive](https://github.com/tpope/vim-fugitive) | A Git wrapper so awesome, it should be illegal.
[gotham](https://github.com/whatyouhide/vim-gotham) | Code never sleeps in Gotham City.
[solarized](https://github.com/altercation/vim-colors-solarized) | Precision color scheme for multiple applications (terminal, vim, etc.) with both dark/light modes.

## Troubleshooting

* **My Airline symbols are not displaying properly** - Typically, when this occurs it is because the font specified in the .vimrc (see line 40 - "set guifont") cannot be located.  Ensure that you have specified the name correctly.  Note that, after updating the guifont setting, you will probably need to *completely* close gvim and re-open to see it take effect.  (An ":AirlineRefresh" doesn't seem to do it.)
