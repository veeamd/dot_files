set nu
set nocompatible

" To make the gitgutter markers appear faster, we need to make vim's
" `updatetime` shorter
set updatetime=100

" Display trailing white spaces
set list        
set listchars=trail:·,tab:>-

" Automatically remove trailing white spaces on saving
function! StripTrailingWhitespace()
  mark a
  %s/\s\+$//e
  'a
endfunction

autocmd BufWritePre *.h,*.m,*.swift,*.rb,*.yml,*.js,*.jsx,*.css,*.less,*.sass,*.scss,*.html,*.xml,*.erb,*.haml,*.sh,Dockerfile*,*.rake call StripTrailingWhitespace()

" We are manually installing plugins
" Here is how to do it
" `mkdir -p ~/.vim/pack/default/start` 
" `cd ~/.vim/pack/default/start`
" `git clone https://github.com/morhetz/gruvbox.git`

" Seems that we need put this line after we add a color scheme
" let g:gruvbox_italic=1
set termguicolors
colorscheme gruvbox
filetype plugin indent on       " load file type plugins + indentation
syntax on

"" Airline
let g:airline_theme='dark'

" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set encoding=utf-8
set showcmd                     " display incomplete commands

"" Whitespace
set wrap
set backspace=indent,eol,start  " backspace through everything in insert mode
set softtabstop=4 shiftwidth=4 expandtab " a tab is four spaces, expandtab is to use spaces not tabs 

set mouse=a

" Config Markdown syntax
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" line numbers
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Use a line cursor within insert mode and a block cursor everywhere else.
"
" Using iTerm2? Go-to preferences / profile / colors and disable the smart bar
" cursor color. Then pick a cursor and highlight color that matches your theme.
" That will ensure your cursor is always visible within insert mode.
"
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" workaround for delays when switching between insert and normal mode
set ttimeout
set ttimeoutlen=1
set ttyfast
