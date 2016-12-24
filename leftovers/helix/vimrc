"  Install Vundle
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
"lugin 'scrooloose/syntastic'
"Plugin 'christoomey/vim-tmux-navigator'
Plugin 'mileszs/ack.vim'
Plugin 'moll/vim-bbye'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/fzf'
call vundle#end()



filetype off
"call pathogen#infect()
filetype plugin indent on

" setup plugins
"source ~/.vim/vundle_plugin.vim

" don't bother with vi compatibility
set nocompatible

" enable syntax highlighting
syntax enable

set autoindent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set expandtab!                                                " expand tabs to spaces
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
set nolist                                                     " show trailing whitespace
"set listchars=tab:▸\ ,trail:▫
set mouse=a
set number                                                   " show line numbers
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set shiftwidth=2                                             " normal mode indentation commands use 2 spaces
set showcmd
set smartcase                                                " case-sensitive search if any caps
set softtabstop=2                                            " insert mode tab and backspace use 2 spaces
set tabstop=2                                                " actual tabs occupy 8 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full

"if exists('$TMUX')  " Support resizing in tmux
"  set ttymouse=xterm2
"endif
set ttymouse=xterm2
set ttyfast

" keyboard shortcuts
let mapleader = ','
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader>l :Align
nmap <leader>a :Ack 
nmap <leader>b :CommandTBuffer<CR>
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>t :CommandT<CR>
nmap <leader>T :CommandTFlush<CR>:CommandT<CR>
nmap <leader>] :TagbarToggle<CR>
nmap <leader><space> :call whitespace#strip_trailing()<CR>
nmap <leader>g :ToggleGitGutter<CR>
nmap <leader>c <Plug>Kwbd
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" plugin settings
let g:CommandTMaxHeight=20
let g:NERDSpaceDelims=1
let g:gitgutter_enabled = 0
" ZOMG the_silver_searcher is so much faster than ack"
let g:ackprg = 'ag --nogroup --column'

" fdoc is yaml
autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
" md is markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown
" extra rails.vim help
autocmd User Rails silent! Rnavcommand decorator      app/decorators            -glob=**/* -suffix=_decorator.rb
autocmd User Rails silent! Rnavcommand observer       app/observers             -glob=**/* -suffix=_observer.rb
autocmd User Rails silent! Rnavcommand feature        features                  -glob=**/* -suffix=.feature
autocmd User Rails silent! Rnavcommand job            app/jobs                  -glob=**/* -suffix=_job.rb
autocmd User Rails silent! Rnavcommand mediator       app/mediators             -glob=**/* -suffix=_mediator.rb
autocmd User Rails silent! Rnavcommand stepdefinition features/step_definitions -glob=**/* -suffix=_steps.rb
" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" Fix Cursor in TMUX
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


set backspace=indent,eol,start " this just started breaking

"
"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_perl_checker = 1
"let g:syntastic_loc_list_height = 1


set modeline
set modelines=5

" its 2016
set tw=250

set nocursorline " don't highlight current line

" keyboard shortcuts
inoremap jj <ESC>

" gui settings
if (&t_Co == 256 || has('gui_running'))
  colorscheme desert
endif


"let g:syntastic_python_checker = 'pyflakes'
"execute pathogen#infect('stuff/{}')
set guifont=Monaco:h14

" keystrokes - moving around
set whichwrap=h,l,~,[,]
noremap <Space> <PageDown>
noremap <BS> <PageUp>

noremap Y y$
command! Nt :NERDTree
nnoremap <F1> :help<Space>
nmap <F2> :source ~/.vimrc<CR>
nmap <F3> :e ~/.vimrc.local<CR>


" : Pressing F5 lists all buffer, just type number
map   <F5> :mks!<CR><c-s><F11>

" Make <F8> diff the current buffer with it's file on disk.
nmap <F8> :w !diff -w -B -C 5 -p - % >tmp.diff<CR>:sp tmp.diff<CR>


set pastetoggle=<F10>           " pastetoggle (sane indentation on pastes)
map <F11> :!git commit -a -m '
map <F12> :!git commit % -m '

" ¿ why is the upside down question mark so awesome?

" mapping copy, paste, cut to alt
map <A-c> "+y
map <A-x> "+x
map <A-v> "+p


imap <c-z> <c-o>u

" use <Ctrl>+N/<Ctrl>+P to cycle through files:
nnoremap <C-N> :next<CR>
nnoremap <C-P> :prev<CR>


imap <C-j> <ESC><C-W>j
imap <C-h> <ESC><C-W>h
imap <C-k> <ESC><C-W>k
imap <C-l> <ESC><C-W>l

map <A-Down> dd p
map <A-Up> dd <up>P

noremap <C-e>  3<C-e>
noremap <C-y>  3<C-y>

map H ^
map L $

set dir=~/.vimbkup/
set backupdir=~/.vimbkup/


set backspace=indent,eol,start
set history=1000

" ugh, read the docs for this line
"set viminfo=%,'40,<100,f1,h

"set wildmenu
"set wildmode=list:longest,full
"

" avoiding the "Hit enter to continue prompts"
set shortmess=atI
"
    set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
    set virtualedit=onemore         " allow for cursor beyond last character


set matchpairs+=<:>

" text formating
"set shiftwidth=4
"set ts=4
"set shiftround
"set noexpandtab
"set autoindent
"syntax on
"
"set tw=120 ts=4 sw=4 sta et sts=4 ai
"set noexpandtab


" move to automatically format c++ code...
set formatoptions=crnt

set browsedir=buffer
set wildignore=*.orig,*.exe

" vim comments
set comments+=b:\"

augroup filetype
        autocmd BufNewFile,BufRead *.txt set filetype=human
        autocmd BufNewFile,BufRead *.md set filetype=human
augroup END        


autocmd FileType c,cpp,slang,java,jsp set cindent
autocmd FileType perl set smartindent
autocmd FileType css set smartindent
autocmd FileType help set nonumber
autocmd FileType human set nonumber


set ignorecase
set smartcase
set incsearch
set infercase

command! Bx :Bdelete


" Sane ZZ & ZQ for windows
nmap ZZ :wqa<CR>
nmap ZQ :qa!<CR>
":%s/$/, /

set nohlsearch "!!!!
let python_highlight_all = 1

set noeb vb t_vb=

" TMUX maddness

"let g:tmux_navigator_no_mappings = 1

noremap <C-j> <C-W>j
noremap <C-h> <C-W>h
noremap <C-k> <C-W>k
noremap <C-l> <C-W>l

"nnoremap <silent> <C-j> :TmuxNavigateLeft<cr>
"nnoremap <silent> <C-h> :TmuxNavigateDown<cr>
"nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
"nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
"nnoremap <silent> Previous-Mapping} :TmuxNavigatePrevious<c
"let g:tmux_navigator_save_on_switch = 1

cmap w!! w !sudo tee > /dev/null % <CR>
"map w!! w !sudo tee > /dev/null % <CR>

" eliminate trailing whitespace
autocmd BufWritePre *.py %s/\s\+$//e
set ttimeoutlen=10


nnoremap <Leader>q :Bdelete<CR>


" these were in my AFS VM, odd cursor behavior
"au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
"au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"au VimEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
"
"
"
"
" add local only changes here
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
