"
" This file should be put in ~/.config/nvim/
"

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

let g:python3_host_prog = "/Users/weiz/.pyenv/shims/python3"

" colorscheme ------------------------------ {{{
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set background=dark
if has("gui_vimr")
  colorscheme base16-default-dark
else
  "colorscheme Tomorrow-Night
  colorscheme gruvbox
endif
" }}}


" ctags for swift -------------------------- {{{
let g:tagbar_type_swift = {
  \ 'ctagstype': 'swift',
  \ 'kinds' : [
    \ 'e:Enums',
    \ 't:Typealiases',
    \ 'p:Protocols',
    \ 's:Structs',
    \ 'c:Classes',
    \ 'f:Functions',
    \ 'v:Variables',
    \ 'E:Extensions',
    \ 'l:Constants',
  \ ],
  \ 'sort' : 0
  \ }
" }}}


" swiftformat ---------------------------- {{{
  nnoremap <leader>F :!swiftformat %<cr>
" }}}

" swift command --------------------------- {{{
au FileType swift nmap <leader>r :QuickRun swiftrun<cr>
au FileType swift nmap <leader>t :QuickRun swifttest<cr>
" }}}

" autocomplete for swift ------------------- {{{
autocmd FileType swift imap <buffer> <C-k> <Plug>(autocomplete_swift_jump_to_placeholder)
" }}}


" CLighter Xcode --------------------------- {{{
" Config for CLighter
if has('nvim')
    let g:clamp_autostart = 1
    let g:clamp_libclang_file = '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'
else
    let g:clighter8_autostart = 1
    let g:clighter8_libclang_file = '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'
  endif
" }}}


