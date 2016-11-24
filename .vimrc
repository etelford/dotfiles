set nocompatible              " be iMproved, required

"so ~/.vim/plugins.vim

syntax enable

set backspace=indent,eol,start         "Make backspace behave like every other editor
let mapleader=','                    "Default leader is \, but a comma is much better
set nonumber                             "Show line numbers
set nowrap

" Tabs to spaces: http://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"----------------Visuals----------------"
colorscheme atom-dark-256
set t_CO=256
set guifont=Fira_Code:h17
set linespace=15                       "Line-height (only works in GUI Vim)

" We'll fake a custom left padding for each window.
"hi LineNr guibg=bg
hi LineNr ctermbg=bg guibg=bg
set foldcolumn=2
hi foldcolumn ctermbg=bg guibg=bg

" Get rid of ugly split borders.
hi vertsplit ctermbg=bg ctermfg=bg guibg=bg



"----------------Search----------------"
set hlsearch                           "Better highlighting when searching
set incsearch





"----------------Splits----------------"
set splitbelow
set splitright

nmap <leader>v :vertical resize +10<CR>

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>





"----------------Mappings----------------"
" Make it easy to edit the Vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr> 

" Remove highlight after search
nmap <Leader><space> :nohlsearch<cr>

" Make Nerdtree easier to toggle
nmap <Leader>l :NERDTreeToggle<cr>

nmap <C-R> :CtrlPBufTag<cr>

nmap <Leader>f :tag<space>

" Allow for hitting tab to indent
vmap <Tab> >gv
vmap <S-Tab> <gv





"----------------Plugins----------------"

"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'topmorder:ttb,min:1,max:30,results:30'


"----------------Auto-Commands----------------"

" Automatically source the Vimrc file when we save it

augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
set runtimepath^=~/.vim/bundle/ag
