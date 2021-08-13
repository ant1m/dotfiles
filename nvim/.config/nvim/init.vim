call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neovim/nvim-lspconfig'
Plug 'ervandew/supertab'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

filetype plugin indent on
colorscheme gruvbox-material
set background=dark

luafile ~/.config/nvim/lua/init_lsp.lua
luafile ~/.config/nvim/lua/init_lua_lsp.lua
luafile ~/.config/nvim/lua/init_telescope.lua

hi link LspDiagnosticsDefaultError GruvboxRed 
hi link LspDiagnosticsDefaultWarn GruvboxOrange

let g:mapleader = ","

set nu rnu
set nohlsearch
set hidden
set noswapfile
set nobackup
set omnifunc=v:lua.vim.lsp.omnifunc
set updatetime=1000

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

" affiche le type de fichier
let g:go_auto_type_info = 1 
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']


inoremap <C-s> <ESC>:w<CR>
nnoremap <leader>ev :e $MYVIMRC<CR>
nnoremap <leader>sv :so $MYVIMRC<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <leader>, :wincmd w<CR>

nnoremap Q :clo<cr>

nnoremap <C-q> <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>fs <cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>
nnoremap <leader>fd <cmd>lua require('telescope.builtin').lsp_document_diagnostics()<cr>
