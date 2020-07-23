" lala
    " lala
        " lala


syntax on
set number
set relativenumber

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
filetype indent on

set splitright

set foldenable
set foldlevelstart=10
set foldnestmax=10
set encoding=utf8

set wildmenu
set wildmode=full
set wildoptions=tagfile
let $NVIM_TUI_ENABLE_TRUE_COLOR=1


"Plugin
call plug#begin('~/.vim/plugged')
    Plug 'gmarik/Vundle.vim'                           " Vundle
    Plug 'frazrepo/vim-rainbow'
    Plug 'caioaguida/pievim'
    Plug 'SirVer/ultisnips'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-commentary'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'vim-syntastic/syntastic'
    Plug 'vim-airline/vim-airline'
    Plug 'lervag/vimtex'
    Plug 'vim-pandoc/vim-rmarkdown'
    Plug 'vim-pandoc/vim-pandoc-syntax'
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'lilydjwg/colorizer'
    Plug 'gko/vim-coloresque'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'dylanaraps/wal.vim'
call plug#end()


"" Configuração de plugins
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Ignored"   : "☒",
    \ "Unknown"   : "?"
    \ }

let g:tex_flavor = 'latex'
let g:vimtex_compiler_progname = 'nvr'

let g:python3_host_prog = '/home/silenux/.pyenv/versions/neovim3/bin/python'
let g:python_host_prog = '/home/silenux/.pyenv/versions/neovim2/bin/python'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsListSnippets="<c-h>"
let g:UltiSnipsEditSplit = "tabdo"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']




" let g:gruvbox_italic=1
" colorscheme gruvbox
colorscheme wal
autocmd VimEnter * hi Normal ctermbg=none

map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=25



" Salva mão
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l
	vmap < <gv
    vmap > >gv


" O Entendedor {{{
	autocmd BufRead,BufNewFile *.tex set filetype=tex
	autocmd BufRead,BufNewFile *.Rtex set filetype=tex
	autocmd BufRead,BufNewFile *.ino set filetype=arduino
	autocmd BufRead,BufNewFile *.py set filetype=python
	autocmd BufRead,BufNewFile *.R set filetype=r
	autocmd BufRead,BufNewFile *.fish set filetype=fish
	autocmd BufRead,BufNewFile *.conky set filetype=conf
    " }}}
    
" Spell
    " autocmd FileType tex :set spell spelllang=pt,en,de,fr
    set spelllang=en,de,fr

"---Navigating with guides
	inoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
	vnoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
	map <Space><Tab> <Esc>/<++><Enter>"_c4l

" Compiladores de LaTeX e BibTeX
	autocmd FileType tex map <F4> :w! \| !biber main <CR>
	" autocmd FileType tex map <F5> :w! \| !xelatex main.tex <CR>
	" autocmd FileType tex map <F8> :w! \| !zathura main.pdf & <Enter>
	autocmd BufReadPre *.tex let b:vimtex_main = 'main.tex'
	autocmd FileType tex let g:vimtex_view_general_viewer = 'zathura'
	autocmd FileType tex let g:vimtex_quickfix_open_on_warning = 0
	autocmd FileType tex call deoplete#enable()
	call deoplete#custom#var('omni', 'input_patterns', {
				\ 'tex': g:vimtex#re#deoplete
				\})
	


""" LaTeX


	autocmd FileType tex inoremap " ``

	autocmd FileType tex inoremap ,i \textit{}<Esc>i
	autocmd FileType tex inoremap ,I \textit{<Esc>ea}<Esc>
	autocmd FileType tex nnoremap ,i i\textit{<Esc>ea}<Esc>
	autocmd FileType tex vmap ,i S}i\textit<Esc>%

	autocmd FileType tex inoremap ,e \emph{}<Esc>i
	autocmd FileType tex inoremap ,E \emph{<Esc>ea}<Esc>
	autocmd FileType tex nnoremap ,e i\emph{<Esc>ea}<Esc>
	autocmd FileType tex vmap ,e S}i\emph<Esc>%
	
	
	autocmd FileType tex inoremap ,b \textbf{}<Esc>i
	autocmd FileType tex inoremap ,B \textbf{<Esc>ea}<Esc>
	autocmd FileType tex nnoremap ,b i\textbf{<Esc>ea}<Esc>
	autocmd FileType tex vmap ,b S}i\textbf<Esc>%

	autocmd FileType tex inoremap ,sc \textsc{}<Esc>i
	autocmd FileType tex inoremap ,SC \textsc{<Esc>ea}<Esc>
	autocmd FileType tex nnoremap ,sc i\textsc{<Esc>ea}<Esc>
	autocmd FileType tex vmap ,sc S}i\textsc<Esc>%

	autocmd FileType tex inoremap ,gr \foreignlanguage{greek}{}<Esc>:call Grego()<CR>i
	autocmd FileType tex inoremap ,GR \foreignlanguage{greek}{<Esc>ea}<Esc>:call Grego()<CR>i
	autocmd FileType tex nnoremap ,GR i\foreignlanguage{greek}{<Esc>ea}<Esc>:call Grego()<CR>i

	" Ambientes
	autocmd FileType tex inoremap ,grego \begin{greek}<Enter><Enter>\end{greek}<Esc>ki
	autocmd FileType tex inoremap ,vers \begin{verse}<Enter><Enter>\end{verse}<Esc>ki
	autocmd FileType tex inoremap ,comp \begin{compactenum}<Enter><Enter>\end{compactenum}<Esc>ki\item<Space>
	autocmd FileType tex inoremap ,inpar \begin{inparaenum}<Enter><Enter>\end{inparaenum}<Esc>ki\item<Space>

	""" Específico para vocabulários em LaTeX
	autocmd FileType tex inoremap ,vocab \entradavoc{<++>}{<++>}{<++>}<Esc>0

"""" Python
	autocmd FileType python map <F5> :w! \| !python %:t <CR>
	autocmd FileType python call deoplete#enable()
	" autocmd FileType python colorscheme gruvbox

"""" Ruby
	autocmd FileType ruby map <F5> :w! \| !ruby %:t &<CR>
	autocmd FileType ruby call deoplete#enable()
	" autocmd FileType ruby colorscheme gruvbox


"""" Rscript
	autocmd FileType r map <F5> :w! \| !Rscript %:t <CR>


"""" Texto
	autocmd FileType markdown map <F5> :w! \| !groff %:t > out.pdf <CR>
	autocmd FileType tex map <F7> :w! \| !zathura out.pdf & <Enter>



""" Rmarkdown
		autocmd FileType rmarkdown map <F5> :w! \| :RMarkdown pdf<CR><CR>
        autocmd FileType rmarkdown setlocal commentstring=<!--\ %s\ -->
        autocmd FileType rmarkdown inoremap ,b ****<Esc>hi
        autocmd FileType rmarkdown inoremap ,B **<Esc>ea**<Esc>
        autocmd FileType rmarkdown nnoremap ,b i**<Esc>ea**<Esc>
		autocmd FileType rnoweb map <F5> :w! \| :!R CMD Sweave %<CR><CR>


""" Groff
	autocmd BufRead,BufNewFile *.ms,*.me,*.mom set filetype=groff

	"autocmd FileType groff map <F5> :w! | :!groff -ms '%:r'.ms -T pdf > '%:r'.pdf<C-R>
	autocmd FileType groff map <F5> :w! \| !groff -ms '%' -T pdf > '%:r'.pdf  <CR>

	autocmd Filetype groff inoremap á \*[']a
	autocmd Filetype groff inoremap Á \*[']A
	autocmd Filetype groff inoremap ã \*[~]a
	autocmd Filetype groff inoremap Ã \*[~]A
	autocmd Filetype groff inoremap é \*[']e
	autocmd Filetype groff inoremap É \*[']E
	autocmd Filetype groff inoremap í \*[']i
	autocmd Filetype groff inoremap Í \*[']I
	autocmd Filetype groff inoremap ó \*[']o
	autocmd Filetype groff inoremap Ó \*[']O
	autocmd Filetype groff inoremap õ \*[~]o
	autocmd Filetype groff inoremap Õ \*[~]O
	autocmd Filetype groff inoremap ú \*[']u
	autocmd Filetype groff inoremap Ú \*[']U
	autocmd Filetype groff inoremap ç \*[,]c

"---Linting no Python
	autocmd FileType python set statusline+=%#warningmsg#
	autocmd FileType python set statusline+=%{SyntasticStatuslineFlag()}
	autocmd FileType python set statusline+=%*
	autocmd FileType python let g:syntastic_always_populate_loc_list = 1
	autocmd FileType python let g:syntastic_auto_loc_list = 1
	autocmd FileType python let g:syntastic_check_on_open = 1
	autocmd FileType python let g:syntastic_check_on_wq = 0
	autocmd FileType python let g:syntastic_python_checkers = ['pylint2']
	autocmd FileType python let g:syntastic_javascript_checkers = ['eslint']
	autocmd FileType python let g:syntastic_tex_checkers = ['chktex']

" Fish Files
let g:coloresque_extra_filetypes = ['fish', 'conf', 'zsh']


