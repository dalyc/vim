"Remap ctrl-n to be save. I don't think :w<CR> is helping my rsi.
nnoremap <C-n> :w<CR>

" Change the leader from \ to ,
let mapleader = ","
nnoremap <leader>w :set nowrap!<cr>

" set the various plugin paths
" set runtimepath+=/home/rgh/.vim/gnupg
" set runtimepath+=/home/rgh/.vim/commentary
" set runtimepath+=/home/rgh/.vim/orgmode
" set runtimepath+=/home/rgh/.vim/puppet
" set runtimepath+=/home/rgh/.vim/repeat
" set runtimepath+=/home/rgh/.vim/surround
" set runtimepath+=/home/rgh/.vim/solarized
" set runtimepath+=/home/rgh/.vim/utl

" source /home/rgh/.vim/udev.vim
" source /home/rgh/.vim/autotag.vim
" source /home/rgh/.vim/vimperator.vim

syntax enable
filetype plugin on
filetype indent on

" map sb i#!/usr/bin/env ruby<CR>
" map fp {!}fmt<CR>

map pa :se paste
highlight Pmenu ctermbg=238 gui=bold

autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

" let g:solarized_termcolors=256
" let g:solarized_bold=0
" let g:solarized_underline=0
" let g:solarized_termtrans=1

syntax enable
" set background=dark
" colorscheme solarized


runtime macros/matchit.vim

:nohlsearch

let g:allml_global_maps = 1
let loaded_matchparen = 1

" rails stuff.
filetype on  " Automatically detect file types.

"set nocompatible  " We don't want vi compatibility.

if $USER != 'root'
  set modeline
else
  set nomodeline
endif

set tags=tags;

" set pastetoggle=<c-v>

set viminfo^=!
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)

set autoindent

" For vim/ctags to recognise methods with a ?
set iskeyword+=?

" Visual
set novisualbell  " No blinking .
set noerrorbells  " No noise.

set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2
set nonumber

" See http://items.sjbach.com/319/configuring-vim-right for an
" explanation of the following:
" set hidden
" set wildmode=list:longest,full

set directory=~/.vim-tmp,~/tmp,/var/tmp,/tmp

" persistent undo.
if v:version >= 703
  set undofile
  set undodir=~/.vim-tmp,~/tmp,/var/tmp,/tmp
endif

" Shorten messages
" set shortmess=aI

" Don't add two spaces when joining lines
set nojoinspaces

" Set the title in screen.
" if $TERM=='screen' || $TERM=='screen-256color'
"     exe "set title titlestring=%f"
"     exe "set title t_ts=\<ESC>k t_fs=\<ESC>\\"
" endif

" Removes trailing spaces
function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction
