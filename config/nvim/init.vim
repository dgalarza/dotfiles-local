set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

set numberwidth=5
set background=dark
set colorcolumn=80

set backspace=2   " Backspace deletes like most programs in insert mode
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set modelines=0   " Disable modelines as a security precaution
set nomodeline
set shiftround

call plug#begin()

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'vim-test/vim-test'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'RRethy/nvim-treesitter-endwise'
Plug 'tpope/vim-bundler'
Plug 'lewis6991/gitsigns.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'
Plug 'pbrisbin/vim-mkdir'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'onsails/lspkind-nvim'
Plug 'terrortylor/nvim-comment'
Plug 'EdenEast/nightfox.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'arkav/lualine-lsp-progress'
Plug 'cappyzawa/telescope-terraform.nvim'
Plug 'hashivim/vim-terraform'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

call plug#end()

" colorscheme nordfox

lua require('settings')

" navigate tabs
nmap <Leader>nt :tabnew<CR>
map <leader><tab> :tabn <CR>
map <leader>p<tab> :tabp <CR>

nnoremap <leader>w <C-w>v<C-w>l

lua <<EOF
  require'lspconfig'.terraformls.setup{}
EOF
autocmd BufWritePre *.tfvars lua vim.lsp.buf.format()
autocmd BufWritePre *.tf lua vim.lsp.buf.format()

au BufRead,BufNewFile Dangerfile setfiletype ruby

let g:python_recommended_style = 0
filetype plugin indent on
syntax on
