"  Install Vundle
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'asciidoc/vim-asciidoc'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'junegunn/fzf'
Plugin 'mileszs/ack.vim'
Plugin 'moll/vim-bbye'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
"Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-dispatch'
Plugin 'wincent/command-t'
Plugin 'bronson/vim-trailing-whitespace'
call vundle#end()

"  Install Vundle
"  set ttymouse=xterm2
" : Pressing F5 lists all buffer, just type number
" Make <F8> diff the current buffer with it's file on disk.
" Sane ZZ & ZQ for windows
" TMUX maddness
" ZOMG the_silver_searcher is so much faster than ack"
" automatically rebalance windows on vim resize
" avoiding the "Hit enter to continue prompts"
" don't bother with vi compatibility
" eliminate trailing whitespace
" enable syntax highlighting
" extra rails.vim help
" fdoc is yaml
" gui settings
" its 2016
" keyboard shortcuts
" keystrokes - moving around
" mapping copy, paste, cut to alt
" md is markdown
" move to automatically format c++ code...
" plugin settings
" setup plugins
" text formating
" these were in my AFS VM, odd cursor behavior
" ugh, read the docs for this line
" use <Ctrl>+N/<Ctrl>+P to cycle through files:
" vim comments
" word wrapping
" ¿ why is the upside down question mark so awesome?
":%s/$/, /
"Plugin 'christoomey/vim-tmux-navigator'
"au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
"au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"au VimEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"colorscheme elflord
"endif
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"if exists('$TMUX')  " Support resizing in tmux
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_perl_checker = 1
"let g:syntastic_loc_list_height = 1
"let g:syntastic_python_checker = 'pyflakes'
"let g:tmux_navigator_no_mappings = 1
"let g:tmux_navigator_save_on_switch = 1
"lugin 'scrooloose/syntastic'
"map w!! w !sudo tee > /dev/null % <CR>
"nnoremap <silent> <C-h> :TmuxNavigateDown<cr>
"nnoremap <silent> <C-j> :TmuxNavigateLeft<cr>
"nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
"nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
"nnoremap <silent> Previous-Mapping} :TmuxNavigatePrevious<c
"set autoindent
"set list                                                     " show trailing whitespace
"set listchars=tab:▸\ ,trail:▫
"set noexpandtab
"set shiftround
set shiftwidth=2
"set statusline+=%#warningmsg#
"set statusline+=%*
"set statusline+=%{SyntasticStatuslineFlag()}
"set ts=4
"set tw=120 ts=4 sw=4 sta et sts=4 ai
"set viminfo=%,'40,<100,f1,h
"set viminfo=%,'40,<100,f1,h " ugh, read the docs for this line
"set wildmenu
"set wildmode=list:longest,full
"source ~/.vim/vundle_plugin.vim
"syntax on
autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
autocmd BufRead,BufNewFile Jenkinsfile set filetype=groovy
autocmd BufRead,BufNewFile *.fdoc set filetype=yaml " fdoc is yaml
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown " md is markdown
autocmd BufWritePre *.py %s/\s\+$//e
autocmd BufWritePre *.py %s/\s\+$//e " eliminate trailing whitespace
autocmd FileType c,cpp,slang,java,jsp set cindent
autocmd FileType css set smartindent
autocmd FileType help set nonumber
autocmd FileType human set nonumber
autocmd FileType perl set smartindent
autocmd VimResized * :wincmd =
autocmd VimResized * :wincmd = " automatically rebalance windows on vim resize
cmap w!! w !sudo tee > /dev/null % <CR> :e!<CR>
colorscheme desert
command! Bx :Bdelete
command! No :NERDTree
command! Nc :NERDTreeClose
filetype off
filetype plugin indent on
imap <C-h> <ESC><C-W>h
imap <C-j> <ESC><C-W>j
imap <C-k> <ESC><C-W>k
imap <C-l> <ESC><C-W>l
imap <c-z> <c-o>u
inoremap jj <ESC>
let g:CommandTMaxHeight=20
let g:NERDSpaceDelims=1
let g:ackprg = 'ag --nogroup --column'
let g:gitgutter_enabled = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_perl_checker = 1
let g:syntastic_loc_list_height = 1
let g:syntastic_python_checker = 'pyflakes'
let mapleader = ','
let python_highlight_all = 1
map <A-Down> dd p
map <A-Up> dd <up>P
map <A-c> "+y
map <A-v> "+p
map <A-x> "+x
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader>l :Align
map H ^
map L $
nmap <F8> :w !diff -w -B -C 5 -p - % >tmp.diff<CR>:sp tmp.diff<CR>
nmap <F8> :w !diff -w -B -c5 -p - % >tmp.diff<CR>:sp tmp.diff<CR>

nmap <leader>ch :set cursorcolumn! cursorline!<CR>
nmap <leader>T :CommandTFlush<CR>:CommandT<CR>
nmap <leader>] :TagbarToggle<CR>
nmap <leader>a :Ack
nmap <leader>b :CommandTBuffer<CR>



nmap <leader>bd :Bdelete<CR>
nmap <leader>c <Plug>Kwbd
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>

" fugitive git bindings
nmap <leader>ga :Git add %:p<CR><CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit -v -q<CR>
nmap <leader>gt :Gcommit -v -q %:p<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>ge :Gedit<CR>
nmap <leader>gr :Gread<CR>
nmap <leader>gw :Gwrite<CR><CR>
nmap <leader>gl :silent! Glog<CR>:bot copen<CR>
nmap <leader>gp :Ggrep<Space>
nmap <leader>gm :Gmove<Space>
nmap <leader>gb :Git branch<Space>
nmap <leader>go :Git checkout<Space>
nmap <leader>gps :Dispatch! git push<CR>
nmap <leader>gpl :Dispatch! git pull<CR>
nmap <leader>mci :Dispatch! mvn clean install -DskipTests=true<CR>

nmap <leader>q :q
nmap <leader>t :CommandT<CR>

" window management

nmap <leader>wc <c-w>c
nmap <leader>wj 10<c-w>-
nmap <leader>wk 10<c-w>+
nmap <leader>wn <c-w>n

nmap <leader>w :FixWhitespace<CR>

" these are the commands to edit vim and other dotfiles
nmap <leader>vs :source ~/.vimrc<CR>
nmap <leader>ve :e ~/.vimrc<CR>
nmap <leader>vt :e ~/dotfiles/tmux.conf<CR>
nmap <leader>vz :e ~/dotfiles/zsh/orig.zsh<CR>

nmap ZQ :qa!<CR>
nmap ZZ :wqa<CR>
nmap <leader>zz :wq<CR> 

nnoremap <C-N> :next<CR>
nnoremap <C-P> :prev<CR>
nnoremap <F1> :help<Space>
noremap <BS> <PageUp>
noremap <C-e>  3<C-e>
noremap <C-h> <C-W>h
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-l> <C-W>l
noremap <C-y>  3<C-y>
noremap <Space> <PageDown>
noremap Y y$

" VIM OPTIONS 
set autoindent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=indent,eol,start							  	
set backupcopy=yes                                           " see :help crontab
set backupdir=~/.vimbkup/
set browsedir=buffer
set clipboard=unnamed,autoselect                                        " yank and paste with the system clipboard
set comments+=b:\" " vim comments
" set cursorcolumn " cross hair mode
" set cursorline " cross hair mode
set dir=~/.vimbkup/
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab!                                                " expand tabs to spaces
set formatoptions=crnt " move to automatically format c++ code...
set guifont=Monaco:h16
set history=1000
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set infercase
set laststatus=2                                             " always show statusline
set linebreak
set matchpairs+=<:>
set modeline
set modelines=5
set mouse=vi
set nocompatible
set nospell
set noeb vb t_vb=
set nohlsearch "!!!!
set nolist                                                     " show trailing whitespace
set number                                                   " show line numbers
set pastetoggle=<F10>           " pastetoggle (sane indentation on pastes)
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set shiftround
set shiftwidth=2                                             " normal mode indentation commands use 2 spaces
set shortmess=atI " avoiding the "Hit enter to continue prompts"
set showcmd
set smartindent
set smarttab
set smartcase
set softtabstop=2                                            " insert mode tab and backspace use 2 spaces
" set statusline+=%#warningmsg#
set ts=2
set ttimeoutlen=10
set ttyfast
set ttymouse=xterm2
"set tw=120 ts=4 sw=4 sta et sts=4 ai
set tw=250
set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
set virtualedit=onemore         " allow for cursor beyond last character
set whichwrap=h,l,~,[,]
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc,*.orig,*.exe
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full
set wrap
syntax enable
syntax on
map <C-E> <C-W>
