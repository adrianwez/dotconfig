:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

" Plugins
call plug#begin()

Plug 'https://github.com/preservim/nerdtree' " File System Explorer
Plug 'https://github.com/vim-airline/vim-airline' " Status Bar
Plug 'https://github.com/ap/vim-css-color' " Css Colors Highlight
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto Complition
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons

call plug#end()

" Keybindings
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" use <tab> for trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
