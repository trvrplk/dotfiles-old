let mapleader = ","
let localleader = ",/"

execute pathogen#infect()

syntax on
set background=dark
let g:solarized_termtrans = 1
let g:solarized_termcolors=256
colorscheme solarized

let g:jekyll_path = "~/Blog"


set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

set viminfo='1000,\"1000,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

set bs=2

set laststatus=2

set backup 
set backupdir=~/.vim-tmp 
set directory=~/.vim-tmp 
set writebackup
map tags :TagbarToggle<CR>


set mouse=a
set ttymouse=xterm2
set ttyfast

au BufRead,BufNew *.md set ft=markdown
au BufRead,BufNew .soloistrc set ft=yaml

map <Leader>;sld :!keydown slides slides.md<CR>

call pathogen#helptags()

map <Leader><Leader> <C-^>

set nobackup
set nowritebackup
set noswapfile

let g:ackprg = 'ag --nogroup --nocolor --column'
map ^ <NOP>
let localleader = "^"

au BufRead,BufNew *.hamlc set ft=haml
au BufRead,BufNew *.emblem set ft=slim

" Save with C-s
map <C-s> :w<CR>

" Bubble text with C-arrow
nmap <C-Up> [e
nmap <C-Down> ]e
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Map ,tb to TagBar
map <Leader>tb :TagbarToggle<CR>

" Ctrl-P stuff
nmap ff :CtrlP<CR>
" Don't use arrow keys
imap <C-k> <up>
imap <C-j> <down>
imap <C-h> <left>
imap <C-l> <right>

" Markdown stuff
map <Leader>mh I#<SPACE>
map <Leader>mhh I##<SPACE>

" Textile stuff
map <Leader>th Ih1.<SPACE><ESC>A
map <Leader>thh Ih2.<SPACE><ESC>A

" Case stuff "
map <Leader>bup veU
map <Leader>eup vbU

nmap <SPACE> za
map <Leader>rd :!bundle exec rspec % --format documentation<CR>
map <Leader>t :! rspec %<CR>
map <Leader>x :exec getline(".")<cr>

map <Leader>gc :Gcommit<CR>
map <Leader>ga :Git add %<CR>
map <Leader>gaa :Git add .<CR>
map <Leader>gb :Gblame<CR>
map <Leader>gl :Git lol<CR>
map <Leader>gst :Git status<CR>

" Nano-like stuff
map <C-k> dd
map <C-t> :set spell!<CR>

map <Up> <NOP>
map <Down> <NOP>
map <Left> <NOP>
map <Right> <NOP>

imap <Up> <NOP>
imap <Down> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>

" Emacs-like stuff

set incsearch

map tags :TagbarToggle<CR>

map <Leader>ffcc :CtrlPClearCache<CR>

command -nargs=0 Spinach execute "!spinach"
command -nargs=0 Gpom execute "Git pom"
command -nargs=1 Gp execute "Git p origin <args>"
command -nargs=0 Gl execute "Git l"
command -nargs=* G execute "Git <args>"
command -nargs=0 Gci execute "Gcommit"
command -nargs=* Gb execute "Git branch <args>"

autocmd BufReadPost fugitive://* set bufhidden=delete
autocmd BufRead *.html.erb set filetype=eruby

autocmd FileType make setlocal ts=8 sts=8	sw=8 noexpandtab
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType haml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType scss setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType coffee setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType js setlocal ts=2 sts=2 sw=2 expandtab

au Bufread,BufNewFile *.hamstache set filetype=haml

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
au BufEnter *.org call org#SetOrgFileType()

if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
  nmap <leader>a> :Tabularize /=><cr>
  vmap <leader>a> :Tabularize /=><cr>
endif

set shell=zsh
set wildignore+=*.o,*.obj,.git,vendor/**
let g:TextileBrowser = "Google Chrome"

let g:SuperTabDefaultCompletionType = "context"

runtime macros/matchit.vim

au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

"let g:Powerline_symbols       = 'fancy'
let g:Powerline_colorscheme   = 'solarized256'
