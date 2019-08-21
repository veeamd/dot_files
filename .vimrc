set nu
set nocompatible

" To make the gitgutter markers appear faster, we need to make vim's
" `updatetime` shorter
set updatetime=100

" Seems that we need put this line after we add a color scheme
" let g:gruvbox_italic=1
set termguicolors
colorscheme gruvbox
filetype plugin indent on       " load file type plugins + indentation
syntax on

"" Airline
let g:airline_theme='dark'

"" Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"" CtrlP
" Change the default mapping and the default command to invoke CtrlP 
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" When invoked without an explicit starting directory, CtrlP will set its local working directory according to this variable:
" 'r' - the nearest ancestor of the current file that contains one of these directories or files: .git .hg .svn .bzr _darcs
" 'a' - the directory of the current file, unless it is a subdirectory of the cwd
" 'c' - the directory of the current file.
" 'w' - modifier to "r": start search from the cwd instead of the current file's directory
" 0 or '' (empty string) - disable this feature.
let g:ctrlp_working_path_mode = 'ra'
" If a file is already open, open it again in a new pane instead of switching to the existing pane
let g:ctrlp_switch_buffer = 'et'
" Exclude files and directories using Vim's wildignore and CtrlP's own g:ctrlp_custom_ignore. If a custom listing command is being used, exclusions are ignored:
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" "" NerdTree
nnoremap <C-n> :NERDTreeToggle<CR>
" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set encoding=utf-8
set showcmd                     " display incomplete commands

"" Whitespace
set nowrap                      " don't wrap lines
set backspace=indent,eol,start  " backspace through everything in insert mode
set softtabstop=4 shiftwidth=4 expandtab " a tab is four spaces, expandtab is to use spaces not tabs 

" test autocommands
" can I use ** to include recursively all the subfolders?
au BufRead,BufNewFile ~/Dev/iOS/StreetEasy/StreetEasy/*.swift setlocal tags=~/Dev/iOS/StreetEasy/StreetEasy/tags
au BufRead,BufNewFile ~/Dev/iOS/StreetEasy/StreetEasy/*.h setlocal tags=~/Dev/iOS/StreetEasy/StreetEasy/tags
au BufRead,BufNewFile ~/Dev/iOS/StreetEasy/StreetEasy/*.m setlocal tags=~/Dev/iOS/StreetEasy/StreetEasy/tags
au BufRead,BufNewFile *.swift,*.h,*.m set tags+=~/.global-objc-tags
au BufRead,BufNewFile *.swift,*.h,*.m set tags+=~/.streeteasy-tags

" config the swift language server protocol	
"if executable('sourcekit-lsp')
"    autocmd User lsp_setup call lsp#register_server({
"        \ 'name': 'sourcekit-lsp',
"        \ 'cmd': {server_info->['sourcekit-lsp']},
"        \ 'whitelist': ['swift'],
"        \ })
"endif
"
"" use LSP for omnicompletion
"autocmd FileType swift setlocal omnifunc=lsp#complete

set ttymouse=xterm2

" Config Markdown syntax
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Plugins that I know I want
"  fugitive
"  surround
"  call dein#add('ryanoasis/vim-devicons')
"  call dein#add('vim-syntastic/syntastic')

" Potential plugins
"
"  " language server protocol
"  "call dein#add('prabirshrestha/async.vim')
"  "call dein#add('prabirshrestha/vim-lsp')
"
"

" line numbers
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
