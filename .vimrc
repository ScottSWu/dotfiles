set autoindent
set incsearch
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
syntax on
set autoread
set number

cmap w!! w !sudo tee > /dev/null %
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
