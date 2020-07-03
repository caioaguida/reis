let g:InglAntOn=0

function! ToggleInglAnt()
	if !g:InglAntOn
		call InglAnt()
	else
		call InglAntOff()
	endif
endfunction

function! InglAnt()
	echo "Mapeamento de teclado Inglês Antigo ligado"
	let g:InglAntOn=1
	inoremap th	þ
	inoremap Th	Þ
	inoremap A	ā
	inoremap E	ē
	inoremap I	ī
	inoremap O	ō
	inoremap U	ū
endfunction

function! InglAntOff()
	let g:InglAntOn=0
	echo "Mapeamento de teclado Inglês Antigo desligado"
	iunmap th
	iunmap Th
	iunmap A
	iunmap E
	iunmap I
	iunmap O
	iunmap U
endfunction

