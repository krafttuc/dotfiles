" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible


" ======================== General Configure  =========================
set history=1000                "Store lots of :cmdline history
set backspace=indent,eol,start  "Allow backspace in insert mode
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set autoread                    "Reload files changed outside vim
set visualbell                  "No sounds

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" turn on syntax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=","


" ====================== Vundle Initialization =======================

" filetype off is required by vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" put all your Bundles here
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/taglist.vim'
Bundle 'vimwiki'

" filetype plugin indent on is required by vundle
filetype plugin indent on   " Vundle required


" ======================== Files, Backups ============================
set nobackup
set noswapfile
set nowb


" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile


" ======================== Search ====================================
set ignorecase
set smartcase
set incsearch
set hlsearch


" ==================== Indentation, Tabs, Text =======================
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set linebreak
set wrap

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·


" ============================= Completion ===========================
set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif


" ============================ Scrolling ============================
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1


" ======================== User Interface ============================
set relativenumber
set showmatch


" ========================= Custom Settings ==========================
so ~/.vim/settings.vim


" ====================== Plugin Settings =============================

" Taglist
"nnoremap <Leader>tl :TlistToggle<CR>
" let Tlist_Use_Right_Window = 1
" let Tlist_Show_One_File = 1
" let Tlist_Exit_OnlyWindow = 1
" let Tlist_Auto_Highlight_Tag = 1
" let Tlist_Auto_Open = 1
" let Tlist_Auto_Update = 1
" let Tlist_WinWidth = 30
" " use exubarent-ctags
" let Tlist_Ctags_Cmd = '/usr/local/Cellar/ctags/5.8/bin/ctags'

" Vimwiki
"let g:vimwiki_list = [{'path': '~/Dropbox/wiki/',
"                       \ 'path_html': '~/Dropbox/wiki/html/',
"                       \'auto_export': 1}]

"let vimwiki_camel_case = 0
