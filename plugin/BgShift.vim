" BgShift.vim
"" version 0.1.0
"" changes background depending on the time of day
"" by Rafał Łasocha

let g:bg_shift_day_start = get(g:, 'bg_shift_day_start', 7)
let g:bg_shift_day_end = get(g:, 'bg_shift_day_end', 21)
let g:bg_shift_change_automatically = get(g:, 'bg_shift_change_automatically', 1)

function! BgShift()
	if g:bg_shift_change_automatically
		if strftime("%H") >= g:bg_shift_day_start && strftime("%H") < g:bg_shift_day_end
			if &background == 'dark'
				set background=light
			endif
		else
			if &background == 'light'
				set background=dark
			endif
		endif
	endif
endfunction

command! BgShiftOff let g:bg_shift_change_automatically = 0
command! BgShiftOn let g:bg_shift_change_automatically = 1

augroup bg_shift
	autocmd!
	autocmd BufWritePost * nested call BgShift()
augroup END
