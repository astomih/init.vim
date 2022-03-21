set number
set imdisable
set splitbelow
set mouse=a
set clipboard=unnamed,unnamedplus
set cursorline
set termguicolors
tnoremap <Esc> <C-\><C-n>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
if has('win32')
"set shell=pwsh.exe
"set shellcmdflag=/c\ pwsh.exe\ -ExecutionPolicy\ RemoteSigned\ -c
endif


" IME OFF
if executable('zenhan')
autocmd InsertLeave * :call system('zenhan 0')
autocmd CmdlineLeave * :call system('zenhan 0')
endif


call plug#begin('~/.vim/plugged')
"LSP周り
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'lighttiger2505/deoplete-vim-lsp'
"スニペット
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'prabirshrestha/asyncomplete-neosnippet.vim'
"ファイラ
Plug 'preservim/nerdtree'
"見た目
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
"git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
"ユーティリティ
Plug 'tpope/vim-commentary'
call plug#end()

if has("win64")
nnoremap <C-t> :12split <bar> :term pwsh<CR>
endif
if has("unix")
nnoremap <C-t> :12split|:term<CR>
endif



filetype plugin on
" NERDTree SETTINGS
nmap <C-f> :NERDTreeToggle<CR>


" Airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme = 'luna'

nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab