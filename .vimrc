" To install pathogen
" mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
" To install kalisi
" cd ~/.vim/bundle && git clone https://github.com/freeo/vim-kalisi

execute pathogen#infect()
let g:rainbow_active = 1
set autoindent
set incsearch
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
colorscheme kalisi
set background=dark
let t_Co = 256
syntax on
set autoread
set number
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_use_ultisnips_completer = 1
let g:ycm_seed_identifiers_with_syntax = 1 
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_invoke_completion = '<S-Enter>'
map <C-m> :YcmCompleter GoTo<CR>
nmap <C-k> :YcmCompleter GetDoc<CR>
let g:airline_powerline_fonts = 1
let g:syntastic_check_on_open = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="base16"

cmap w!! w !sudo tee > /dev/null %
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

