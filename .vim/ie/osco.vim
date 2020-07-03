let g:OscoOn=0

function! ToggleOsco()
	if !g:OscoOn
		call Osco()
	else
		call OscoOff()
	endif
endfunction

function! Osco()
	echo "Mapeamento de teclado Osco ligado"
	let g:OscoOn=1
	inoremap a	𐌀
	inoremap b	𐌁
	inoremap g	𐌂
	inoremap d	𐌃
	inoremap e	𐌄
	inoremap v	𐌅
	inoremap z	𐌆
	inoremap h	𐌇
	inoremap i	𐌉
	inoremap l	𐌋
	inoremap m	𐌌
	inoremap n	𐌍
	inoremap p	𐌐
	inoremap ś	𐌑
	inoremap r	𐌓
	inoremap s	𐌔
	inoremap t	𐌕
	inoremap u	𐌖
	inoremap f	𐌚
	inoremap ú	𐌞
	inoremap í	𐌝
endfunction

function! OscoOff()
	let g:OscoOn=0
	echo "Mapeamento de teclado Osco desligado"
	iunmap a
	iunmap b
	iunmap g
	iunmap d
	iunmap e
	iunmap v
	iunmap z
	iunmap h
	iunmap i
	iunmap l
	iunmap m
	iunmap n
	iunmap p
	iunmap ś
	iunmap r
	iunmap s
	iunmap t
	iunmap u
	iunmap f
	iunmap ú
	iunmap í
endfunction

