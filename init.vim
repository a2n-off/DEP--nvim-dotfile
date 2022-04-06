" vim: set foldmethod=marker foldlevel=0:

" neoVim setup " {{{
autocmd!
scriptencoding utf-8 " set script encoding
if !1 | finish | endif " stop loading config if it's on tiny or small
syntax enable
set mouse=a " enable the mouse on neoVim
set relativenumber
set nocompatible
set number
set fileencodings=utf-8,latin
set encoding=UTF-8
set title
set autoindent
set background=dark
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set shell=zsh
set backupskip=/tmp/*,/private/tmp/*
" suppress appending PasteStart and PasteEnd when pasting
set t_BE=
set nosc noru nosm
set lazyredraw " don't redraw while executing macros (good performance config)
set ignorecase " ignore case when searching
set smarttab " be smart when using tabs
set formatoptions+=r " add asterisks in block comments

" incremental substitution (neovim)
if has("nvim")
  set inccommand=split
endif

" indents
filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai " autoindent
set si " smart indent
set nowrap " no wrap line
set backspace=start,eol,indent

" finding files - search down into subfolder
set path+=**
set wildignore+=*/node_modules/*

" turn off paste mode when leaving insert
autocmd InsertLeave * set nopaste
" }}}

" Force certain file type " {{{
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript
" Fish
au BufNewFile,BufRead *.fish set filetype=fish
" .conf file
au BufNewFile,BufRead *.conf set filetype=conf

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

" }}}

" Multi os plug.vim imports " {{{
runtime ./plug.vim

if has("unix")
  let s:uname = system("uname -s")
  
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif

endif

if has('win32')
  runtime ./windows.vim
endif

runtime ./maps.vim
  " }}}

" Theme configuration " {{{
" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  " colorscheme deep-space
  " let g:airline_theme='deep_space'
  " colorscheme scheakur
  colorscheme one
  let g:airline_theme='one'
  " background transparency
  highlight Normal guibg=none
  highlight NonText guibg=none
endif
" }}}

" shortcut " {{{
  
  " chadtree " {{{
  nnoremap <C-t> :CHADopen<CR>
  "}}}
  
  " barbar " {{{
  " Move to previous/next
  nnoremap <silent> <A-,> :BufferPrevious<CR>
  nnoremap <silent> <A-.> :BufferNext<CR>
  " Close buffer
  nnoremap <silent> <A-x> :BufferClose<CR>
  " Goto buffer in position...
  nnoremap <silent>    <A-1> :BufferGoto 1<CR>
  nnoremap <silent>    <A-2> :BufferGoto 2<CR>
  nnoremap <silent>    <A-3> :BufferGoto 3<CR>
  nnoremap <silent>    <A-4> :BufferGoto 4<CR>
  nnoremap <silent>    <A-5> :BufferGoto 5<CR>
  nnoremap <silent>    <A-6> :BufferGoto 6<CR>
  nnoremap <silent>    <A-7> :BufferGoto 7<CR>
  nnoremap <silent>    <A-8> :BufferGoto 8<CR>
  nnoremap <silent>    <A-9> :BufferLast<CR>
   " }}}

  " telescope " {{{
  nnoremap <silent> ;f <Cmd>Telescope find_files<CR>
  nnoremap <silent> ;r <Cmd>Telescope live_grep<CR>
  nnoremap <silent> ;s <Cmd>Telescope coc document_symbols<CR>
  nnoremap <silent> \\ <Cmd>Telescope buffers<CR>
  nnoremap <silent> ;; <Cmd>Telescope help_tags<CR>
  " }}}

  " tagbar " {{{
  nnoremap <silent> <F8> :TagbarToggle<CR> 
  " }}}

" }}}

" plugin configuration " {{{
  " minimap " {{{
  " the minimap.rc.vim file does not want to load so I pass the params here
  let g:minimap_width = 10
  let g:minimap_auto_start = 1
  let g:minimap_auto_start_win_enter = 1
  let g:minimap_highlight_search = 1
  let g:minimap_git_colors = 1
  let g:minimap_highlight_range = 0
  " }}}
  
" }}}
