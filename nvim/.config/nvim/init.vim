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
"Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'glepnir/lspsaga.nvim'
call plug#end()

filetype plugin indent on
colorscheme gruvbox-material
set background=dark
hi Normal ctermbg=NONE

luafile ~/.config/nvim/lua/init_lsp.lua
luafile ~/.config/nvim/lua/init_lua_lsp.lua
luafile ~/.config/nvim/lua/init_telescope.lua

set rtp+=~/.config/nvim/lua/perso
"luafile ~/.config/nvim/lua/init_treesitter.lua

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

let g:UltiSnipsExpandTrigger="<tab>"

inoremap <C-,> <ESC>
nnoremap <C-s> :w<CR>
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
nnoremap <leader>d <cmd>lua require('telescope.builtin').lsp_definitions()<cr>
command Insdate :lua perso.insert_date_log()

" vim-go configuration
" affiche le type de fichier
let g:go_auto_type_info = 1 
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_test_show_name = 1
let g:go_doc_balloon = 0
let g:go_doc_popup_window = 1
let g:go_term_enabled = 1
let g:go_diagnostics_level= 1
let g:go_fold_enable=[]
let g:go_highlight_format_strings = 0


augroup filetype_c
	autocmd!
	autocmd Filetype c setlocal tabstop=2 shiftwidth=2 expandtab
augroup END

augroup filetype_txt
	autocmd!
	autocmd Filetype text setlocal colorcolumn=120 textwidth=120
augroup END
