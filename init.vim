let mapleader=" "

:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set encoding=UTF-8
:set completeopt-=preview

source $VIMRUNTIME/mswin.vim
behave mswin


source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/NERDTree.vim
source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/floaterm.vim
source $HOME/.config/nvim/hot-keys.vim
source $HOME/.config/nvim/terraform.vim
source $HOME/.config/nvim/which-key.vim


"Set Popup menu colors
hi Pmenu ctermfg=white ctermbg=8

" lspconfig setup
lua <<EOF
  require'lspconfig'.pyright.setup{}
EOF
