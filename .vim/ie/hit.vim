let g:HititaOn=0

function! ToggleHitita()
	if !g:HititaOn
		call Hitita()
	else
		call HititaOff()
	endif
endfunction

function! Hitita()
	echo "Mapeamento de teclado Hitita ligado"
	let g:HititaOn=1
	inoremap s	š
	inoremap h	ḫ
	inoremap ,sum	\emph{\textsc{}}<Esc>hi
	inoremap ,akk	\textsc{}<Esc>i
	inoremap ,det	\textsuperscript{}<Esc>i
endfunction

function! HititaOff()
	let g:HititaOn=0
	echo "Mapeamento de teclado Hitita desligado"
	iunmap s
	iunmap h
	iunmap ,sum
	iunmap ,akk
	iunmap ,det
endfunction

