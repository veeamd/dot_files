set nu

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/weiz/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/weiz/.cache/dein')
  call dein#begin('/Users/weiz/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/weiz/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " status tab bar
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  " language checker
  call dein#add('w0rp/ale')
  
  " swiftlang
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('mitsuse/autocomplete-swift')
  call dein#add('kballard/vim-swift')
  call dein#add('keith/swift.vim')
  call dein#add('aciidb0mb3r/SwiftDoc.vim')
  " call dein#add('honza/vim-snippets') 
  " quickrun
  call dein#add('thinca/vim-quickrun')
  
  " colorscheme
  call dein#add('chriskempson/base16-vim')
  call dein#add('morhetz/gruvbox')
  call dein#add('ryanoasis/vim-devicons')

  " You can specify revision/branch/tag.
  "call dein#add('shougo/deol.nvim', {'rev': '2.0'})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
" This will slow down the startup by a lot
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------






syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set nowrap                      " don't wrap lines
set softtabstop=4 shiftwidth=4  " a tab is four spaces 
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter


" settings only for vim, not nvim
if !has('nvim')
   set ttymouse=xterm2
endif

