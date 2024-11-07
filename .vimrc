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
	autocmd ColorScheme * highlight Visual cterm=NONE ctermbg=237 ctermfg=NONE guibg=#4e415a guifg=NONE gui=NONE
augroup END

let g:NERDTreeWinPos = "right"
set laststatus=0
