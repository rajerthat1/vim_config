set cursorline
set number
set relativenumber
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
call plug#end()

let g:gruvbox_contrast_dark = 'hard'
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

augroup VisualHighlight
    autocmd!
    autocmd ColorScheme * highlight Visual cterm=NONE ctermbg=240 ctermfg=NONE guibg=#585858 guifg=NONE gui=NONE
augroup END

let g:NERDTreeWinPos = "right"
set laststatus=0
set autoindent
set guicursor=a:block-blinkon0
set guifont=JetBrainsMono\ Nerd\ Font:h15
set mousehide
set noswapfile

set shiftwidth=4
set smarttab
set tabstop=4
set nowrap

syntax on

nnoremap <F5> :w<CR>:!python3 %<CR>
