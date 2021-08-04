set laststatus=2 	" always show status line
set statusline=
" set statusline+=\ %{GetSLMark()} \
set statusline+=\ %t%m%r%h%w\ 							" file name modified read-only window-flag
set statusline+=\ %#SLL#fe:%*%{strlen(&fenc)?&fenc:'none'}\ 	" file encoding
set statusline+=\ %#SLL#ff:%*%{&ff}\ 					" file format
set statusline+=\ %#SLL#ft:%*%{GetFT()}\ 				" file type
set statusline+=\ %#SLL#cwd:%*%<%{CurDir()} 			" cwd
set statusline+=%=%= 									" left/right divider
set statusline+=\ \ %#SLL#(%l,%c%V)\ 					" location
set statusline+=%P 										" % scrolled


function! GetSLMark()
	let mrk = bufnr('%')
	return mrk
endfunction

function! CurDir()
    let curdir = substitute(getcwd(), '/Users/sam', "~", "g")
    return curdir
endfunction

function! GetFT()
	let curft = substitute(&filetype,'actionscript', "as", "g")
    return curft
endfunction

