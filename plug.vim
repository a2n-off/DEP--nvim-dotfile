" vim: set foldmethod=marker foldlevel=0:

if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

" Treesitter
" -- Tl,Dr ---
" Parsing library, allow to manipule the  code in smarter way
" Allow improved and faster syntax highlighting, code navigation, refactor, ...
" -- Info about config ---
" You need to do :TSInstall <language_to_install> for installing language you
" want or ensure_installed = language or 'all'
" {{{
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Treesitter
" }}}

" Coc
" -- Tl,Dr ---
" Load extensions like VSCode and host language servers.
" -- Info about LSP ---
" LSP provide programming language-specific features such as : 
" Go to definition, (auto)completion, Code Actions (automatic formatting, organize imports, ...),
" Show method signatures, Show/go to references, Snippets
" -- Info about config ---
" you need to do :CocInstall coc-json coc-tsserver or edit the
" coc-settings.json via :CocConfig
" See the full list of language here > https://github.com/neoclide/coc.nvim/wiki/Language-servers
" {{{
Plug 'neoclide/coc.nvim', {'branch': 'release'} " LSP handler
" }}}

" vim-commentary
" -- Tl,Dr ---
" (un)comment line with gcc
" {{{
Plug 'tpope/vim-commentary' " comment code w/ gcc
" }}}

" vim-bundler & vim-rails (has pseudo dependancy)
" -- Tl,Dr ---
" lightweight support for ruby's bundler
" -- Info about bundler package ---
" syntax hightling for installed or not gem, command, ect...
" >> :Bundle, which wraps bundle.
" >> An internalized version of bundle open: :Bopen (and :Bsplit, :Btabedit, etc.).
" 'path' and 'tags' are automatically altered to include all gems from your bundle. (Generate those tags with gem-ctags!)
" >> Highlight Bundler keywords in Gemfile.
" >> Support for gf in Gemfile.lock, plus syntax highlighting that distinguishes between installed and missing gems.
" >> Support for projectionist.vim, including projections based on which gems are bundled.
" -- Info about rails package ---
" massive plugin for RoR app
" see full doc here https://github.com/tpope/vim-rails
" eg. : Commands like :Emodel, :Eview, :Econtroller, are provided to :edit files by type
" along with S, V, and T variants for :split, :vsplit, and :tabedit.
" Throw a bang on the end (:Emodel foo!) to automatically create the file 
" with the standard boilerplate if it doesn't exist.
" -- Info about config ---
" best accompanied by rake.vim and/or rails.vim
" {{{
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails' " Ruby on Rails power tools (rails commands, intelli switch file
" }}}

" vim-endwise
" -- Tl,Dr ---
" helps to end certain structures automatically (like if/end in ruby)
" {{{
Plug 'tpope/vim-endwise' 
" }}}

" vim-dadbod
" -- Tl,Dr ---
" database tools, provide connection string, query, ect...
" -- Info about package ---
" Full doc here : https://github.com/tpope/vim-dadbod
" All interaction is through invoking :DB
" All forms accept a URL as the first parameter, which can be omitted if a 
" default is configured or provided by a plugin. 
" Omit further arguments to spawn an interactive console
" {{{
Plug 'tpope/vim-dadbod'
" }}}

" chadtree
" -- Tl,Dr ---
" tree file menu with custom action like create file, ...
" {{{
Plug 'ms-jpq/chadtree', { 'branch': 'chad', 'do': 'python3 -m chadtree deps' }
" }}}

" nvim-autopairs
" -- Tl,Dr ---
" auto close {} [] () <> ...
" {{{
Plug 'windwp/nvim-autopairs'
" }}}

" nvim-ts-autotag
" -- Tl,Dr ---
" auto pair html via treesitter
" {{{
Plug 'windwp/nvim-ts-autotag'
" }}}

" minimap
" -- Tl,Dr ---
" show the code right to your screen
" -- Info about package ---
" require minimap as dependancy
" {{{
Plug 'wfxr/minimap.vim' " code minimap
" }}}

" barbar
" -- Tl,Dr ---
" give tabs and tabsline
" {{{
Plug 'romgrk/barbar.nvim' " tabs navbar
" }}}

" lualine
" -- Tl,Dr ---
" bottom status bar
" {{{
Plug 'hoob3rt/lualine.nvim' " status line
" }}}

" gitsigns
" -- Tl,Dr ---
" git integration for buffer, for example inline blame
" {{{
Plug 'lewis6991/gitsigns.nvim' " gi integration for buffer (inline blame, ...)
" }}}

" telescope and plugins
" -- Tl,Dr ---
" Awesome fuzzy finder over lists
" {{{
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' } " better finder algo
Plug 'fannheyward/telescope-coc.nvim' " add coc to telescope, giving to telescope extra power search
" }}}

" plenary
" -- Tl,Dr ---
" auto generated lua function, here as dependency 
" for telescope and other plugins
" {{{
Plug 'nvim-lua/plenary.nvim'
" }}}

" nvim-colorizer
" -- Tl,Dr ---
" high-performance color highlighter for Neovim
" {{{
Plug 'norcalli/nvim-colorizer.lua', { 'do': ':ColorizerAttachToBuffer' }
" }}}

" vim-jdaddy
" -- Tl,Dr ---
" JSON manipulation and pretty printing
" command :
" aj provides a text object for the outermost JSON object, array, string, number, or keyword.
" gqaj "pretty prints" (wraps/indents/sorts keys/otherwise cleans up) the JSON construct under the cursor.
" gwaj takes the JSON object on the clipboard and extends it into the JSON object under the cursor.
" There are also ij variants that target innermost rather than outermost JSON construct.
" {{{
Plug 'tpope/vim-jdaddy'
" }}}

" lspkind-nvim
" -- Tl,Dr ---
" vscode-like pictograms for neovim built-in lsp completion items 
" {{{
Plug 'onsails/lspkind-nvim'
" }}}

" awesome-vim-colorschemes
" -- Tl,Dr ---
" Collection of awesome color schemes for Neo/vim, merged for quick use.
" -- Info about config ---
" see each theme config doc here https://github.com/rafi/awesome-vim-colorschemes
" {{{
Plug 'rafi/awesome-vim-colorschemes' " theme manager
" }}}

" tagbar
" -- Tl,Dr ---
" displays tags in a window, ordered by scope
" -- Info about config ---
" Need Universal CTags as dependency
" {{{
Plug 'preservim/tagbar'
" }}}

" lsp-colors
" -- Tl,Dr ---
" Here for compatibily purpose with certain plugins
" Creates missing LSP diagnostics highlight groups for color schemes 
" that don't yet support the Neovim 0.5 builtin LSP client 
" {{{
Plug 'folke/lsp-colors.nvim' 
" }}}

" todo-comments
" -- Tl,Dr ---
" highlight todo comments like TODO, HACK, BUG, ...
" {{{
Plug 'folke/todo-comments.nvim'
" }}}

" grammarous
" -- Tl,Dr ---
" grammer checking
" {{{
Plug 'rhysd/vim-grammarous', { 'do': ':GrammarousCheck' }
" }}}

" ICONS PLUGIN
" need to be loaded at the end for better integration

" web-devicons
" -- Tl,Dr ---
" icons here has dependency for barbar
" based on nerdfont
" {{{
Plug 'kyazdani42/nvim-web-devicons' " icons dependency for barbar
" }}}

" vim-devicons
" -- Tl,Dr ---
" Adds file type icons to Vim plugins such as: NERDTree, vim-airline, 
" CtrlP, unite, Denite, lightline, vim-startify and many more 
" based on nerdfont
" {{{
Plug 'ryanoasis/vim-devicons'
 " }}}


call plug#end()
