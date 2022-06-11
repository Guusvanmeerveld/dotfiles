command Ws w|so%

let mapleader = " "

" Simple keybinds
nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> <C-q> :q<CR>
inoremap <silent> <C-s> <ESC>:w<CR>

nnoremap <silent> <S-E> :10Term<CR>

nnoremap <silent> <A-Up> :m-2<CR>
nnoremap <silent> <A-Down> :m+1<CR>

" Easy split navigation
nnoremap <C-w> <C-w>w
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

:set tabstop=4

:set relativenumber

:set timeout timeoutlen=500 ttimeoutlen=500

:set clipboard=unnamedplus

let s:fontsize = 12

" Plugins
call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'

" Nerd tree plugins
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'preservim/nerdcommenter'

Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
"  Plug 'Valloric/YouCompleteMe'
Plug 'mg979/vim-visual-multi'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'sainnhe/sonokai'
Plug 'ryanoasis/vim-devicons'
Plug 'vimlab/split-term.vim'
Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'
" Plug 'thaerkh/vim-workspace'
Plug 'Raimondi/delimitMate'

call plug#end()

" Fzf
nnoremap <silent> <Leader>p :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>

" Prettier settings
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" Vim eunuch setting
nnoremap <silent> <Leader>e :SudoEdit<CR>
nnoremap <silent> <Leader>s :SudoWrite<CR>

" Workspace settings
" let g:workspace_autocreate = 1

" Nerd tree settings
" autocmd VimEnter * NERDTree

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1

nnoremap <silent> <C-t> :NERDTreeToggle<CR>

nnoremap <silent> <Leader>] :tabn<CR>
nnoremap <silent> <Leader>[ :tabp<CR>

" Lightline config
set noshowmode

" Color scheme
colorscheme sonokai
