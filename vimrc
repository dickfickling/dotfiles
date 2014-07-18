"set nocompatible
"set background=light
set background=dark
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
set backspace=indent,eol,start
set splitright
set splitbelow
set ruler
set pastetoggle=<F2>
map <F3> :NERDTree<CR>
map <S-Right> :tabn<CR>
map <S-Left> :tabp<CR>


syntax on
"colorscheme solarized
set expandtab
set tabstop=2
set shiftwidth=2
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
map OA <Up>
map OB <Down>
map OD <Left>
map OC <Right>
let g:CommandTHighlightColor='Pmenu'
execute pathogen#infect()
