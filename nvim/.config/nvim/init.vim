call plug#begin()
Plug 'http://github.com/tpope/vim-surround'
Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'ervandew/supertab'
Plug 'beauwilliams/statusline.lua'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
call plug#end()

filetype plugin indent on

luafile ~/.config/nvim/lua/init.lua
luafile ~/.config/nvim/lua/init_telescope.lua

set nu rnu
set nohlsearch
set hidden
set noswapfile
set nobackup
set omnifunc=v:lua.vim.lsp.omnifunc
set updatetime=1000

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:go_auto_type_info = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:mapleader = ","

inoremap <C-s> <ESC>:w<CR>
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <leader>, :wincmd w<CR>
inoremap <F3> :Ag C-r C-w<CR>

nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>o <cmd>lua require('telescope.builtin').lsp_definitions()<cr>
nnoremap <leader>r <cmd>lua require('telescope.builtin').lsp_references()<cr>
