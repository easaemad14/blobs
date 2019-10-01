" Default preferences
set nu
set relativenumber
set spell
"set ignorecase
set smartindent
set textwidth=80
set undofile
set cursorline

" Fold methods and levels
set foldmethod=indent
set foldlevelstart=0

" Recursively search for files
set path+=**

" Command to make tags file
command! MakeTags !ctags -R .

" Template commands (from normal mode, see noremap)
nnoremap \cpphead :-1read $HOME/.config/nvim/cpphead.skel<CR>
nnoremap \hhead :-1read $HOME/.config/nvim/hhead.skel<CR>
nnoremap \pyhead :-1read $HOME/.config/nvim/pyhead.skel<CR>

nnoremap ,html :silent !firefox %<CR>

" Set the color scheme
"set background=dark
colorscheme industry

" Set tab and line widths
set tabstop=2
set shiftwidth=2
set noexpandtab

" This is required to tell nvim to not use the python recommended style
"https://github.com/neovim/neovim/commit/2648c3579a4d274ee46f83db1bd63af38fa9e0a7
let g:python_recommended_style=0

" Remove trailing whitespace before writing file
autocmd BufWritePre * %s/\s\+$//e
