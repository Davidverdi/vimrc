" Basic .vimrc

"Make encoding Unicode
set encoding=utf-8

" Display Line Numbers
set number

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Show the cursor position at all times
set ruler	

" Display incomplete commands
set showcmd

" Switch buffers using Meta+Right and Meta+Left
:nnoremap <M-Right> :bnext<CR>
:nnoremap <M-Left> :bprevious<CR>

" Enable Auto-Indenting
set autoindent
set smartindent

" Auto Indent Spaces
set shiftwidth=4

" Replace tab with appropriate number of spaces, except with makefiles
set expandtab
autocmd Filetype make setlocal noexpandtab

" Settings for *.txt files
"   - Indent lines automatically
"   - Replace tab with 8 spaces
"   - Move 8 spaces with tab key
"   - Wrap text at 76 columns
"   - Check Spelling
autocmd FileType text setlocal autoindent expandtab softtabstop=8 textwidth=76 spell spelllang=en_us

" No spell checking with Vim help files
autocmd FileType help setlocal nospell

" Do incremental searching
set incsearch

"Ignore case when searching
set ignorecase

" Switch on highlighting the last used search pattern.
set hlsearch

" Have a lot of history
set history=1000

" Use a better Regex Engine
set re=1

" Set Syntax highlighing on
syntax enable

" Turn off backups and swap files on local machine. (No risk of disconnect).
set noswapfile
set nobackup
set nowritebackup
