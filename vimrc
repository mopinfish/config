" omajinai
"----------------------------------------------------------
set term=builtin_linux
set ttytype=builtin_linux
set nocompatible
filetype off

"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()
"
"Bundle 'unite.vim'
"Bundle 'unite-locate'
"Bundle 'unite-yarm'
"Bundle 'unite-gem'
"Bundle 'unite-font'
"Bundle 'unite-colorscheme'
"Bundle 'quickrun'
"Bundle 'thinca/vim-quickrun'
"Bundle 'unite-qf'

"一時ファイルの保存場所指定
set backupdir=~/.vim_tmp/vim_bk
set directory=~/.vim_tmp/vim_swp

"縦分割設定
let g:unite_enable_split_vertically = 1

"edit command
set clipboard=unnamed
set ts=4
set expandtab
set shiftwidth=4

"NeoBundle Configs
filetype off 

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/.bundle'))
endif

NeoBundle 'git://github.com/Shougo/neobundle.vim.git'
"NeoBundle 'git://github.com/Shougo/neocomplete.vim'
NeoBundle 'git://github.com/Shougo/neocomplcache.git'
NeoBundle 'git://github.com/Shougo/vimproc.git'
NeoBundle 'git://github.com/Shougo/unite.vim.git'
NeoBundle 'git://github.com/mattn/zencoding-vim.git'
NeoBundle 'git://github.com/thinca/vim-quickrun.git'
NeoBundle 'git://github.com/thinca/vim-ref.git'

"NeoComplcache use
let g:neocomplcache_enable_at_startup = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

filetype plugin on
filetype indent on



filetype plugin indent on
" edit
"-----------------------------------------------------------
"set syntax on
syntax on
set number
set autoindent
set backspace=indent,eol,start
set showmatch
set wildmenu
set formatoptions+=mM
set fileformat=unix
" マウスモード有効
set mouse=a
" screen対応
set ttymouse=xterm2
" 一時ファイル保存場所
set backupdir=~/.vim_tmp/vim_bk
set directory=~/.vim_tmp/vim_swp

" tab
"-----------------------------------------------------------
au FileType php set ts=4 sw=4 softtabstop=4 expandtab
au FileType html set ts=4 sw=4 softtabstop=4 expandtab
au FileType js set ts=4 sw=4 softtabstop=4 expandtab
au FileType css set ts=4 sw=4 softtabstop=4 expandtab
au FileType ruby set ts=2 sw=2 softtabstop=2 expandtab
au FileType scala set ts=2 sw=2 softtabstop=2 expandtab
au! BufNewFile,BufRead *.as :set filetype=actionscript
au! BufNewFile,BufRead *.thtml :set filetype=html
au! BufNewFile,BufRead *.html.twig :set filetype=html
au! BufNewFile,BufRead *.phtml :set filetype=html

set smarttab
inoremap <C-Tab> <C-V><Tab>

" <TAB>: completion.
let g:neocomplcache_enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"


" utf-8
"-----------------------------------------------------------
"let &termencoding=&encoding
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,iso-2022-jp-3,iso-2022-jp-2,euc-jisx0213,euc-jp,cp932

if &encoding == 'utf-8'
  set ambiwidth=double
endif


"highlight
"----------------------------------------------------------
highlight lastSpaces term=underline ctermbg=yellow guibg=yellow
au BufRead,BufNewFile *.ctp set filetype=php
set background=light

highlight String ctermfg=brown guifg=Orange cterm=none gui=none
highlight Search guifg=green guibg=NONE
highlight MatchParen guifg=Yellow guibg=DarkCyan
highlight SignColumn guibg=#101020
highlight CursorIM guifg=NONE guibg=Red
highlight CursorLine guifg=NONE guibg=#505050
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" 行末の空白文字を可視化
highlight WhitespaceEOL cterm=underline ctermbg=red guibg=#FF0000
au BufWinEnter * let w:m1 = matchadd("WhitespaceEOL", ' +$')
au WinEnter * let w:m1 = matchadd("WhitespaceEOL", ' +$')

"twig
""set syntax=htmldjango
au FileType twig set syntax=htmldjango
au! BufNewFile,BufRead *.html.twig :set filetype=twig
"smarty
au! BufNewFile,BufRead *.tpl.html :set filetype=smarty


"coloshceme
"----------------------------------------------------------
set t_Co=256
colorscheme peachpuff
"colorscheme zenburn
"
"----------------------------------------------------------
set nocompatible          " We're running Vim, not Vi!
filetype plugin indent on " Enable filetype-specific indenting and plugins

"NERDTree
"__________________________________________________________
nmap <silent> <F11> :NERDTreeToggle<CR>
nmap <silent> <F10> :NERDTree<CR>
let g:mapleader = '@'

" 引数なしでvimを起動させた時はNERDTreeを開く
""autocmd vimenter * if !argc() | call s:OnlyTree() | endif
"function! s:OnlyTree()
"    NERDTree
"    wincmd l
"    q
"endfunction

"---------------------------------------------------
" neocomplepop setting
"---------------------------------------------------
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

"vimdiff color
"
hi DiffAdd    ctermfg=black ctermbg=2
hi DiffChange ctermfg=black ctermbg=3
hi DiffDelete ctermfg=black ctermbg=6
hi DiffText   ctermfg=black ctermbg=7
