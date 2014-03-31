set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-pathogen'
Bundle 'tpope/vim-sensible'

" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-repeat'
Bundle 'altercation/vim-colors-solarized'
" Bundle 'klen/python-mode'
Bundle "terryma/vim-multiple-cursors"
Bundle "scrooloose/syntastic"
Bundle "vim-scripts/tComment"
" Bundle "yegappan/mru"
" Bundle "matchit.vim"
" Bundle "gundo.vim"
Bundle "ciaranm/detectindent"
Bundle "tpope/vim-sensible"
Bundle "davidhalter/jedi-vim"
"this is the cconfiguration file for linux and mac systems
"symlink this to your home folder as .vimrc 
execute pathogen#infect()
call pathogen#helptags()

"These options and commands enable some very useful features in Vim, that
" no user should have to live without.
 
" Windows Compatible {
  " On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
  " across (heterogeneous) systems easier. 
  "if has('win32') || has('win64')
    "set runtimepath=$VIMRUNTIME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
  "endif
" }
 
 
" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible
 
" Attempt to determine the type of a file based on its name and possibly its
" contents.  Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
filetype plugin on
"helptags ~/.vim/doc
 
" Enable syntax highlighting
set t_Co=256
" set background=dark
colorscheme NVL_twilight
syntax on
 
"------------------------------------------------------------
" Swap file settings
"
set directory^=$HOME/.vim_swap//   "put all swap files together in one place
 
 
"------------------------------------------------------------
" Must have options
"
" These are highly recommended options.
 
set cursorline
 
" One of the most important options to activate. Allows you to switch from an
" unsaved buffer without saving it first. Also allows you to keep an undo
" history for multiple files. Vim will complain if you try to quit without
" saving, and swap files will keep you safe if your computer crashes.
set hidden
 
" Better command-line completion
set wildmenu
 
" Show partial commands in the last line of the screen
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch
 
" Modelines have historically been a source of security vulnerabilities.  As
" such, it may be a good idea to disable them and use the securemodelines
set nomodeline

" Syntactic
let g:syntastic_enable_python_checker = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_checker_args='--ignore=E501,E225'
map <leader>n :lnext<CR>
map <leader>N :lprev<CR>
map <leader>mn :SyntasticCheck<CR>
map <leader>nm :SyntasticReset<CR>
"------------------------------------------------------------
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set guifont=Anonymous\ Pro\ for\ Powerline
"------------------------------------------------------------
" Usability options {{{1
"
" These are options that users frequently set in their .vimrc. Some of them
" change Vim's behaviour in ways which deviate from the true Vi way, but
" which are considered to add usability. Which, if any, of these options to
" use is very much a personal preference, but they are harmless.
 
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase
 
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
 
" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline
 
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler
 
" Always display the status line, even if only one window is displayed
set laststatus=2
 
" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell.  If visualbell is set, and
" this line is also included, vim will neither flash nor beep.  If visualbell
" is unset, this does nothing.
set t_vb=
 
" Enable use of the mouse for all modes
set mouse=a
 
" Set the command window height to 2 lines, to avoid many cases of having to
" 'press <Enter> to continue'
set cmdheight=2
 
" Display line numbers on the left
set number
 
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200
 
"------------------------------------------------------------
" Indentation options
"
" Indentation settings according to personal preference.
 
" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab
 
set nowrap
 
" Indentation settings for using hard tabs for indent. Display tabs as
" two characters wide.
set shiftwidth=4
set tabstop=4

"------------------------------------------------------------
" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

let mapleader = ","

" Reload Vimrc
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Using same symbols as TextMate
set listchars=tab:▸\ ,eol:¬

" Quit window on <leader>q
nnoremap <leader>q :q<CR>
"
" " hide matches on <leader>space
nnoremap <leader><space> :nohlsearch<cr>
"
" " Remove trailing whitespace on <leader>S
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>
"------------------------------------------------------------
" Mappings {{{1
"
" Useful mappings
 
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$
 
" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
" nnoremap <C-L> :nohl<CR><C-L>
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
" Alternatively use
nnoremap th :tabnext<CR>
nnoremap tl :tabprev<CR>
nnoremap tn :tabnew<CR> 
" each buffer in separate tab
" :au BufAdd,BufNewFile * nested tab sball

" NERDTree and buffer shorcuts
nmap <F3> :bp<CR>
nmap <F4> :bn<CR>
nmap <F5> :NERDTreeToggle<CR>
 
" PuTTY friendly versions of the above
nmap <C-\> :NERDTreeToggle<CR>
"nmap <C-[> :bp<CR>
"nmap <C-]> :bn<CR>
 
" Tabs
"nmap <Leader>tt :tabnew<CR>
"nmap <F11> :tabp<CR>
"nmap <F12> :tabn<CR>
"nmap <Leader>tw :bd<CR>
"nmap <leader>tb :tabfirst<CR>
"nmap <leader>t" ctrlp.vim <F5><F5>shortcuts

nmap <C-p> :CtrlP<CR>

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
 
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif
 
"------------------------------------------------------------
"
"" bind Ctrl+<movement> keys to move around the windows, instead of using
" Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" disable arrows
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed

