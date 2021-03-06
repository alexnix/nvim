set nu
syntax on
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgray
set cursorline 
colorscheme gruvbox
set termguicolors
set background=dark
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set scrolloff=3
set foldmethod=indent
set foldlevel=50  " Folds default opened untill level 50

set relativenumber

filetype plugin on 
highlight Visual cterm=bold ctermbg=darkgray ctermfg=NONE
let mapleader = " "

let g:UltiSnipsExpandTrigger = "<F7>" " map utlisnipets expan trigger to some shitty key I don`t need, so I can still use Tab to cycle autocomplete and with coc this include snippets too

nnoremap <leader>rg :Rg<CR>
nnoremap <leader>ag :Ag<CR>

" Maybe to this automatically after a file was added by NERDTree ma command
nnoremap <leader>rp :CtrlPClearCache<CR> 

nnoremap <leader>rt :NERDTreeRefreshRoot<CR>

noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR><Esc>
inoremap <silent> <C-S>         <C-O>:update<CR><Esc>
nmap <C-w> :q<CR>

imap jj <Esc>

nmap <leader>t :NERDTreeToggle<CR>
nmap gn :NERDTreeFocus<CR>

vmap s S
nmap DO O<Esc>O
nmap do o<Esc>o
nmap to o<Esc>o<Esc>ki

" Scroll page wiht Ctrl+j/k
nmap <C-j> <C-e>
nmap <C-k> <C-y>

" nohighlight after search
nmap <C-h> :noh<Enter>

" Use alt + hjkl to resize windows
nnoremap <silent> <A-j>    :resize -2<CR>
nnoremap <silent> <A-k>    :resize +2<CR>
nnoremap <silent> <A-h>    :vertical resize -2<CR>
nnoremap <silent> <A-l>    :vertical resize +2<CR>

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

call plug#begin(stdpath('data') . '/plugged')

Plug 'sheerun/vim-polyglot'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neoclide/coc.nvim', {'commit': '4e72e5b~'}
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree'
Plug 'lvht/mru'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'unblevable/quick-scope'
Plug 'jremmen/vim-ripgrep'
Plug 'epilande/vim-react-snippets'
Plug 'epilande/vim-es2015-snippets'
Plug 'easymotion/vim-easymotion'
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'emilsoman/indent-highlight.vim'
Plug 'https://github.com/machakann/vim-highlightedyank.git'
Plug 'https://github.com/ivyl/vim-bling'
Plug 'danilamihailov/beacon.nvim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'https://github.com/kshenoy/vim-signature.git'
Plug 'mattn/emmet-vim'
Plug 'jesseleite/vim-agriculture'
" Plug 'psliwka/vim-smoothie'
" Plug 'airblade/vim-gitgutter'
Plug 'https://github.com/vim-scripts/taglist.vim.git'
Plug 'frazrepo/vim-rainbow'
Plug 'vim-scripts/loremipsum'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
" Plug 'liuchengxu/vim-which-key'

Plug 'https://github.com/google/vim-searchindex.git'
Plug 'SirVer/ultisnips'

Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'https://github.com/joshdick/onedark.vim.git'
Plug 'fcpg/vim-orbital'
" Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

let g:bling_time = 100
let g:bling_count = 1
let g:beacon_shrink = 0

" let g:rainbow_active = 1
" let g:NERDTreeGitStatusPorcelainVersion=1
let NERDTreeShowHidden=1

nmap <Leader>/ <Plug>AgRawSearch
vmap <Leader>/ <Plug>AgRawVisualSelection
nmap <Leader>* <Plug>AgRawWordUnderCursor

source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/quickscope.vim
source $HOME/.config/nvim/plug-config/nerd-commenter.vim
source $HOME/.config/nvim/plug-config/easymotion.vim
source $HOME/.config/nvim/plug-config/ctrlp.vim
source $HOME/.config/nvim/plug-config/closetag.vim
source $HOME/.config/nvim/plug-config/highlightedyank.vim
" source $HOME/.config/nvim/plug-config/which-key.vim
" source $HOME/.config/nvim/plug-config/fzf.vim
" source $HOME/.config/nvim/plug-config/gitgutter.vim

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" set notimeout
" nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
