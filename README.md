# bgshift.vim

BgShift.vim changes you `background` setting depending whether it's day or night.

It makes changes after every buffer's write.

It works with Neovim.

# Installation

## Vundle

Add this line to .vimrc: `Plugin 'swistak35/bgshift.vim'`
Launch `vim` and run `:PluginInstall`

## vim-plug

Add this line to .vimrc: `Plug 'swistak35/bgshift.vim'`
Launch `vim` and run `:PlugInstall`

# Available Commands

Command | Function
------- | --------
:BgShiftOn  | Turn automatic transformation on
:BgShiftOff | Turn automatic transformation off

# Settings

BgShift.vim will transform between day and night based on two variables:

```
" default 8, use 24 hour format
let g:bg_shift_day_start = 8

" default 21, 24 hour format
let g:bg_shift_day_end = 21
```

# Thanks

Thanks to the [jonstoler](https://github.com/jonstoler). It is my first vim plugin and it was base on his [Werewolf.vim](https://github.com/jonstoler/werewolf.vim) plugin.
