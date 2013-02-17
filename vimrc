set nocompatible
set background=light
"set background=dark
set backup
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
set ttimeoutlen=100
set relativenumber
set undofile
set undodir=~/.vim/tmp
set ignorecase
set smartcase
set gdefault


syntax on
"colorscheme solarized
set expandtab
set tabstop=4
set shiftwidth=4
if has('mouse')
    set mouse=a
endif
filetype plugin indent on
map <S-Enter> O<Esc>
map <CR> o<Esc>
map! <F7> <ESC> :wq <Enter>
map <F7> :wq <Enter>
command Wq wq
nnoremap <F5> :w ! ./%<Enter>
 " When editing a file, always jump to the last known cursor position.
 " Don't do it when the position is invalid or when inside an event
 " handler
 " (happens when dropping a file on gvim).
autocmd BufReadPost *
 \ if line("'\"") > 0 && line("'\"") <= line("$") |
 \   exe "normal! g`\"" |
 \ endif
