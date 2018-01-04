
" -----------Header-----------{{{
"
" *Please use with cation this setup can lead to insanity.
" --Ian Grant
" }}}

"-----------AirLine&PowerLine-----------{{{
"
"-------------AIRLINE-----------------
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

      " airline symbols
      let g:airline_left_sep = ''
      let g:airline_left_alt_sep = ''
      let g:airline_right_sep = ''
      let g:airline_right_alt_sep = ''
      let g:airline_symbols.branch = ''
      let g:airline_symbols.readonly = ''
      let g:airline_symbols.linenr = ''
    let g:airline_symbols.whitespace = ''

" -------------CPP HIGHLIGHTING--------------
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_class_member_highlight = 1
let g:cpp_concepts_highlight = 1
"}}}

"-----------Remaps-----------------{{{
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

"-----------Auto Commands---------------{{{
autocmd BufWritePre * %s/\s\+$//e
"}}}

"-----------vimrc folds-----------{{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

"-----------Disabled Keys----------------{{{
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

" -----------Custom Preferences-----------{{{
"
"-------------PATHOGEN----------------
execute pathogen#infect()
"-------------Deoplete-------------
let g:deoplete#enable_at_startup = 1
"-------------SuperTab-------------
let g:SuperTabDefaultCompletionType = '<c-x><c-o>'
"-------------Custom Prefs-------------

syntax on
filetype plugin indent on
set nocompatible

"Number lines with relative numbers
set number
set relativenumber
set nowrap
set showmode

"Sane tabs
set smartcase
set smarttab
set smartindent
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=0
set tabstop=2

"Apearance
set background=dark
set t_Co=256
set laststatus=2
"set laststatus=0

"Use z-f and z-o for all basic folds
set foldmethod=manual

"Keeps cursor in middle
set scrolloff=90

"WildMenu
set wildmenu
set wildmode=longest,list,full
set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox

colo vimbrant
hi Keyword ctermfg=darkcyan
hi Constant ctermfg=5*
hi Comment ctermfg=2*
hi Normal ctermbg=none
hi LineNr ctermfg=darkgrey
"}}}

"-----------Haskell-----------{{{
let g:haskell_classic_highlighting = 1
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2
let g:haskell_indent_case_alternative = 1
let g:cabal_indent_section = 2

" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0

" neco-ghc
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
let g:necoghc_enable_detailed_browse = 1
"}}}

"-----------Intero-----------{{{
augroup interoMaps
  au!
  " Maps for intero. Restrict to Haskell buffers so the bindings don't collide.

  " Background process and window management
  au FileType haskell nnoremap <silent> <leader>is :InteroStart<CR>
  au FileType haskell nnoremap <silent> <leader>ik :InteroKill<CR>

  " Open intero/GHCi split horizontally
  au FileType haskell nnoremap <silent> <leader>io :InteroOpen<CR>
  " Open intero/GHCi split vertically
  au FileType haskell nnoremap <silent> <leader>iov :InteroOpen<CR><C-W>H
  au FileType haskell nnoremap <silent> <leader>ih :InteroHide<CR>

  " Reloading (pick one)
  " Automatically reload on save
  au BufWritePost *.hs InteroReload
  " Manually save and reload
  au FileType haskell nnoremap <silent> <leader>wr :w \| :InteroReload<CR>

  " Load individual modules
  au FileType haskell nnoremap <silent> <leader>il :InteroLoadCurrentModule<CR>
  au FileType haskell nnoremap <silent> <leader>if :InteroLoadCurrentFile<CR>

  " Type-related information
  " Heads up! These next two differ from the rest.
  au FileType haskell map <silent> <leader>t <Plug>InteroGenericType
  au FileType haskell map <silent> <leader>T <Plug>InteroType
  au FileType haskell nnoremap <silent> <leader>it :InteroTypeInsert<CR>

  " Navigation
  au FileType haskell nnoremap <silent> <leader>jd :InteroGoToDef<CR>

  " Managing targets
  " Prompts you to enter targets (no silent):
  au FileType haskell nnoremap <leader>ist :InteroSetTargets<SPACE>
augroup END

"-----------NeoMake-----------
call neomake#configure#automake('w')
"Uses Intero only for syntax checks and not neomake
let g:neomake_haskell_enabled_makers = []

"}}}

"-----------GitGutter-------------{{{
let g:gitgutter_max_signs = 250
"}}}

" -----------Grepper-----------{{{
"nnoremap <leader>g :Grepper -tool ack<cr>
"}}}

" -----------CRTL-P-----------{{{
"
map <silent> <Leader>t :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]dist$'
"}}}
