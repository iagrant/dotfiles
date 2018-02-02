" -----------VIM HEADER-----------{{{
"
" Please use with cation this setup will lead to insanity
" <3
" }}}

" -----------PLUGINS------------------{{{
"
"-------------PATHOGEN----------------
execute pathogen#infect()
"-------------AIRLINE-----------------
set t_Co=256
set laststatus=2
let g:Powerline_symbols = 'unicode'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_theme='wombat'
" the separator used on the left side
 let g:airline_left_sep=''
 " the separator used on the right side
 let g:airline_right_sep=''
 " air-line
  let g:airline_powerline_fonts = 1

  if !exists('g:airline_symbols')
      let g:airline_symbols = {}
      endif

      " unicode symbols
      let g:airline_left_sep = '»'
      let g:airline_left_sep = '▶'
      let g:airline_right_sep = '«'
      let g:airline_right_sep = '◀'
      let g:airline_symbols.linenr = '␊'
      let g:airline_symbols.linenr = '␤'
      let g:airline_symbols.linenr = '¶'
      let g:airline_symbols.branch = '⎇'
      let g:airline_symbols.paste = 'ρ'
      let g:airline_symbols.paste = 'Þ'
      let g:airline_symbols.paste = '∥'
      let g:airline_symbols.whitespace = 'Ξ'

 "     " airline symbols
      let g:airline_left_sep = ''
      let g:airline_left_alt_sep = ''
      let g:airline_right_sep = ''
      let g:airline_right_alt_sep = ''
      let g:airline_symbols.branch = ''
      let g:airline_symbols.readonly = ''
      let g:airline_symbols.linenr = ''
    let g:airline_symbols.whitespace = ''


"------------RAINBOW PAREN------------
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 1

" -------------MULTI CURSORS--------------
"let g:multi_cursor_use_default_mapping=0
" Default Mapping
"let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-p>'
"let g:multi_cursor_skip_key='<C-x>'
"let g:multi_cursor_quit_key='<Esc>'

" -------------CPP HIGHLIGHTING--------------
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_class_member_highlight = 1
let g:cpp_concepts_highlight = 1
"}}}

"-----------REMAPS-----------------{{{
" Use ctrl-[hjkl] to select the active split
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
let mapleader = '-'
inoremap jk <Esc>
nnoremap <leader>sv :vsplit .<cr>
noremap <leader>sh :split .<cr>
nnoremap <leader>sr :source $MYVIMRC<cr>
set clipboard=unnamed
"}}}

"-----------AUTO COMMANDS---------------{{{
"Write txt files on open
autocmd BufNewFile *.txt :write
autocmd BufWritePre * %s/\s\+$//e

"Comment out lines using <localleader>c
"autocmd FileType cpp nnoremap <buffer> <localleader>c I//<esc>
"autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>

"}}}

"-----------VIM&i3 FILE SETTINGS --------------------{{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

augroup filetype_i3
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

"-----------DISABLED KEYS----------------{{{
inoremap <Del> <Nop>
nnoremap <Del> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Down> <Nop>
inoremap <Up> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Down> <Nop>
nnoremap <Up> <Nop>
nnoremap <q> <Nop>
"}}}

" -----------CUSTOM PREFS-----------------{{{
syntax on
filetype plugin indent on
set encoding=utf-8
colo vimbrant
set nocompatible
set number
set nowrap
set showmode
set tw=80
set smartcase
set smarttab
set smartindent
set autoindent
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
" :<Tab> will be useful now
set wildmenu

" Give me sane tabs
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" Numbered lines enabled
set relativenumber
set number

"Use z-f and z-o for all basic folding needs
set foldmethod=manual

"Keep that damn cursor in the center of the screen
set scrolloff=90
"}}}

"------------Syntastic----------------{{{
"
map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
"}}}

"-----------Haskell-----------{{{
"-----------GHC-MOD-----------
"
map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>
"
"----------Haskell Autocomplete-----
"
let g:ycm_semantic_triggers = {'haskell' : ['.']}
let g:necoghc_use_stack = 1
let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
"
"}}}

