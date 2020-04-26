" Default preferences
set nu
set relativenumber
set spell
"set ignorecase
set smartindent
set textwidth=80
set undofile
set cursorline
set colorcolumn=81

" Fold methods and levels
set foldmethod=indent
set foldlevelstart=0

" Recursively search for files
set path+=**

" Command to make tags file
command! MakeTags !ctags -R . --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q

" Enable omniComplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Template commands (from normal mode, see noremap)
nnoremap \cpphead :-1read $HOME/.config/nvim/cpphead.skel<CR>
nnoremap \hhead :-1read $HOME/.config/nvim/hhead.skel<CR>
nnoremap \pyhead :-1read $HOME/.config/nvim/pyhead.skel<CR>

nnoremap ,html :silent !firefox %<CR>

" Set the color scheme
"set background=dark
colorscheme industry

" This is required to tell nvim to not use the python recommended style
"https://github.com/neovim/neovim/commit/2648c3579a4d274ee46f83db1bd63af38fa9e0a7
"let g:python_recommended_style=0

" Remove trailing whitespace before writing file
autocmd BufWritePre * %s/\s\+$//e
