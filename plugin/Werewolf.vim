" WEREWOLF
"" version 1.2.1
"" changes your colorscheme depending on the time of day
"" by Jonathan Stoler

let g:vim_bg_shift_day_start = get(g:, 'werewolf_day_start', 8)
let g:vim_bg_shift_day_end = get(g:, 'werewolf_day_end', 20)

function! VimBgShift()
	if strftime("%H") >= g:vim_bg_shift_day_start && strftime("%H") < g:vim_bg_shift_day_end
		set background=dark
	else
		set background=light
	endif
endfunction

augroup vim_bg_shift
	autocmd!
	autocmd CursorMoved,CursorHold,CursorHoldI,WinEnter,WinLeave,FocusLost,FocusGained,VimResized,ShellCmdPost * nested call Werewolf()
augroup END
