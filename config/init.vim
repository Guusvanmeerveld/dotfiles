command Ws w|so%

" Simple keybinds
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>
inoremap <C-s> <ESC>:w<CR>

nnoremap <S-E> :10Term<CR>

:set tabstop=4

:set relativenumber

:set timeout timeoutlen=20 ttimeoutlen=20

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
Plug 'Valloric/YouCompleteMe'
Plug 'terryma/vim-multiple-cursors'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'sainnhe/sonokai'
Plug 'ryanoasis/vim-devicons'
Plug 'vimlab/split-term.vim'
Plug 'sirver/UltiSnips'
Plug 'honza/vim-snippets'
Plug 'lambdalisue/suda.vim'
" Plug 'thaerkh/vim-workspace'
Plug 'Raimondi/delimitMate'
call plug#end()

" Fzf
nnoremap <C-p> :Files<CR>

" Prettier settings
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

" Workspace settings
" let g:workspace_autocreate = 1

" Nerd tree settings
" autocmd VimEnter * NERDTree

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-n> :NERDTree<CR>

nnoremap ] :tabn<CR>
nnoremap [ :tabp<CR>

" Lightline config
set noshowmode

" Color scheme
colorscheme sonokai
