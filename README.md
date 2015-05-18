# vimbgshift.vim

VimBgShift changes you `background` setting depending whether it's day or night.

# Installation

## Vundle

Add this line to .vimrc: `Plugin 'swistak35/vimbgshift'`
Launch `vim` and run `:PluginInstall`

## vim-plug

Add this line to .vimrc: `Plug 'swistak35/vimbgshift'`
Launch `vim` and run `:PlugInstall`

# Available Commands

Command | Function
------- | --------
:VimBgShiftOn  | Turn automatic transformation on
:VimBgShiftOff | Turn automatic transformation off

# Settings

## Time of Day

VimBgShift will transform between day and night based on two variables:

```
" default 8, use 24 hour format
let g:vim_bg_shift_day_start = 8

" default 21, 24 hour format
let g:vim_bg_shift_day_end = 21
```

# Thanks

Thanks to the [jonstoler](https://github.com/jonstoler). It is my first vim plugin and it was base on his [Werewolf.vim](https://github.com/jonstoler/werewolf.vim) plugin.
