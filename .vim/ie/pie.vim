let g:PIEOn=0

function! TogglePIE()
	if !g:PIEOn
		call PIE()
	else
		call PIEOff()
	endif
endfunction

function! PIE()
	echo "Mapeamento de teclado PIE ligado"
	let g:PIEOn=1
	inoremap A		ā
	inoremap I		ī
	inoremap U		ū
	inoremap R		r̥
	inoremap RR		r̥̄
	inoremap lR		l̥
	inoremap lRR		l̥̄
	inoremap A/		ā́
	inoremap I/		ī́
	inoremap U/		ū́
	inoremap R/		ŕ̥
	inoremap RR/		r̥̄́
	inoremap lR/		ĺ̥
	inoremap lRR/		l̥̄́
	inoremap c		k̑
	inoremap cw		k\textsuperscript{u̯}
	inoremap kw		k\textsuperscript{u̯}
	inoremap j		ĝ
	inoremap jw		g\textsuperscript{u̯}
	inoremap bh		b\textsuperscript{h}
	inoremap dh		d\textsuperscript{h}
	inoremap jh		ĝ\textsuperscript{h}
	inoremap gh		g\textsuperscript{h}
	inoremap gw		g\textsuperscript{u̯}
	inoremap gwh		g\textsuperscript{u̯}\textsuperscript{h}
	inoremap h1		h₁
	inoremap h2		h₂
	inoremap h3		h₃
	inoremap y		i̯
	inoremap w		u̯
	inoremap E		ē
	inoremap O		ō
	inoremap E/		ḗ
	inoremap É		ḗ
	inoremap O/		ṓ
	inoremap Ó		ṓ
	inoremap M		m̥
	inoremap N		n̥
endfunction

function! PIEOff()
	echo "Mapeamento de teclado PIE desligado"
	let g:PIEOn=0
	iunmap A
	iunmap I
	iunmap U
	iunmap R
	iunmap RR
	iunmap lR
	iunmap lRR
	iunmap A/
	iunmap I/
	iunmap U/
	iunmap R/
	iunmap RR/
	iunmap lR/
	iunmap lRR/
	iunmap c
	iunmap cw
	iunmap j
	iunmap jw
	iunmap bh
	iunmap dh
	iunmap jh
	iunmap gh
	iunmap gwh
	iunmap h1
	iunmap h2
	iunmap h3
	iunmap y
	iunmap w
	iunmap E
	iunmap O
	iunmap E/
	iunmap É
	iunmap O/
	iunmap Ó
	iunmap M
	iunmap N
endfunction

