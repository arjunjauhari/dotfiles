set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"" The following are examples of different formats supported.
"" Keep Plugin commands between vundle#begin/end.
"" plugin on GitHub repo
Plugin 'airblade/vim-gitgutter'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'marijnh/tern_for_vim'
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'heavenshell/vim-pydocstring'
Plugin 'klen/python-mode'
Plugin 'scrooloose/syntastic'
Plugin 'tmhedberg/SimpylFold'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" Vundle end
"""""""""""""""""""""""""""""""""""""""""""""
" Douglas Black
" Windowing {{{
set wmh=0
map <C-j> <C-w>j<C-w>_
map <C-k> <C-w>k<C-w>_
map <C-h> <C-w>h<C-w>_
map <C-l> <C-w>l<C-w>_
map <S-j> <C-w>j
map <S-k> <C-w>k
map <S-h> <C-w>h
map <S-l> <C-w>l
" }}}
" Colors {{{
syntax enable           " enable syntax processing
colorscheme badwolf
" }}}
" Misc {{{
set ttyfast                     " faster redraw
set backspace=indent,eol,start
" }}}
" Spaces & Tabs {{{
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1
filetype indent on
filetype plugin on
set autoindent
" }}}
" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set nocursorline          " highlight current line
set wildmenu
"set lazyredraw
set showmatch           " higlight matching parenthesis
" }}}
" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }}}
" Folding {{{
"=== folding ===
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
"set foldenable          " don't fold files by default on open
nnoremap <space> za
set foldlevelstart=10    " start with fold level of 1
" }}}
" Line Shortcuts {{{
nnoremap j gj
nnoremap k gk
" nnoremap B ^
" nnoremap E $
" nnoremap $ <nop>
" nnoremap ^ <nop>
nnoremap gV `[v`]
onoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
xnoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
onoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>
xnoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>
 
onoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
xnoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
onoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>
xnoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>
" }}}
" Leader Shortcuts {{{
let mapleader=","
nnoremap <leader>m :silent make\|redraw!\|cw<CR>
nnoremap <leader>w :NERDTreeToggle<CR>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>h :A<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>l :call ToggleNumber()<CR>
nnoremap <leader><space> :noh<CR>
nnoremap <leader>s :mksession!<CR>
nnoremap <leader>a :Ag 
nnoremap <leader>c :SyntasticCheck<CR>:Errors<CR>
nnoremap <leader>1 :set number!<CR>
nnoremap <leader>d :Make! 
nnoremap <leader>r :call RunTestFile()<CR>
nnoremap <leader>g :call RunGoFile()<CR>
vnoremap <leader>y "+y
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
inoremap jk <esc>
" }}}
" Airline {{{
"set encoding=utf-8
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
set laststatus=2
" }}}
" " CtrlP {{{
" let g:ctrlp_match_window = 'bottom,order:ttb'
" let g:ctrlp_switch_buffer = 0
" let g:ctrlp_working_path_mode = 0
" let g:ctrlp_custom_ignore = '\vbuild/|dist/|venv/|target/|\.(o|swp|pyc|egg)$'
" " }}}
" NERDTree {{{
let NERDTreeIgnore = ['\.pyc$', 'build', 'venv', 'egg', 'egg-info/', 'dist', 'docs']
" }}}
" " Syntastic {{{
" let g:syntastic_python_flake8_args='--ignore=E501'
" let g:syntastic_ignore_files = ['.java$']
" " }}}
" " Launch Config {{{
" runtime! debian.vim
" set nocompatible
" call pathogen#infect()
" " }}}
" "" Tmux {{{
" "if exists('$TMUX') " allows cursor change in tmux mode
" "    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
" "    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
" "else
" "    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" "    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" "endif
" "" }}}
" " MacVim {{{
" set guioptions-=r 
" set guioptions-=L
" " }}}
" " AutoGroups {{{
" augroup configgroup
"     autocmd!
"     autocmd VimEnter * highlight clear SignColumn
     autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md,*.rb :call <SID>StripTrailingWhitespaces()
"     autocmd BufEnter *.cls setlocal filetype=java
"     autocmd BufEnter *.zsh-theme setlocal filetype=zsh
"     autocmd BufEnter Makefile setlocal noexpandtab
"     autocmd BufEnter *.sh setlocal tabstop=2
"     autocmd BufEnter *.sh setlocal shiftwidth=2
"     autocmd BufEnter *.sh setlocal softtabstop=2
" augroup END
" " }}}
" " Backups {{{
" set backup 
" set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
" set backupskip=/tmp/*,/private/tmp/* 
" set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
" set writebackup
" " }}}
" " Custom Functions {{{
" function! ToggleNumber()
"     if(&relativenumber == 1)
"         set norelativenumber
"         set number
"     else
"         set relativenumber
"     endif
" endfunc
" 
" function! RunTestFile()
"     if(&ft=='python')
"         exec ":!" . ". venv/bin/activate; nosetests " .bufname('%') . " --stop"
"     endif
" endfunction
" 
" function! RunGoFile()
"     if(&ft=='go')
"         exec ":new|0read ! go run " . bufname('%')
"     endif
" endfunction
" 
" function! RunTestsInFile()
"     if(&ft=='php')
"         :execute "!" . "/Users/dblack/pear/bin/phpunit -d memory_limit=512M -c /usr/local/twilio/src/php/tests/config.xml --bootstrap /usr/local/twilio/src/php/tests/bootstrap.php " . bufname('%') . ' \| grep -v Configuration \| egrep -v "^$" '
"     elseif(&ft=='go')
"         exec ":!gp test"
"     elseif(&ft=='python')
"         exec ":read !" . ". venv/bin/activate; nosetests " . bufname('%') . " --nocapture"
"     endif
" endfunction
" 
 " strips trailing whitespace at the end of files. this
 " is called on buffer write in the autogroup above.
 function! <SID>StripTrailingWhitespaces()
     " save last search & cursor position
     let _s=@/
     let l = line(".")
     let c = col(".")
     %s/\s\+$//e
     let @/=_s
     call cursor(l, c)
 endfunction
" 
" function! <SID>CleanFile()
"     " Preparation: save last search, and cursor position.
"     let _s=@/
"     let l = line(".")
"     let c = col(".")
"     " Do the business:
"     %!git stripspace
"     " Clean up: restore previous search history, and cursor position
"     let @/=_s
"     call cursor(l, c)
" endfunction
"  
" function! s:NextTextObject(motion, dir)
"   let c = nr2char(getchar())
"  
"   if c ==# "b"
"       let c = "("
"   elseif c ==# "B"
"       let c = "{"
"   elseif c ==# "r"
"       let c = "["
"   endif
"  
"   exe "normal! ".a:dir.c."v".a:motion.c
" endfunction
" " }}}

" vim:foldmethod=marker:foldlevel=0
"
"""""""""""""""""""""""""""""""""""""""""""""
" Arjun modifications

" These were for pathogens now disabled
"set autoread
"execute pathogen#infect()

" To toggle tagbar
nmap <F8> :TagbarToggle<CR>

" To enable/disable ycm
" let g:loaded_youcompleteme = 1

" eclim link with vim in built omnifunc
let g:EclimCompletionMethod = 'omnifunc'

" git-gutter update time
set updatetime=250

" easier tab navigation
set tabpagemax=20
nnoremap <tab> gt
nnoremap <s-tab> gT
nnoremap <leader>1 1gt<cr>
nnoremap <leader>2 2gt<cr>
nnoremap <leader>3 3gt<cr>
nnoremap <leader>4 4gt<cr>
nnoremap <leader>5 5gt<cr>
nnoremap <leader>6 6gt<cr>
nnoremap <leader>7 7gt<cr>
nnoremap <leader>8 8gt<cr>
nnoremap <leader>9 9gt<cr>

" highlight 80-character column
if version >= 703
    let &colorcolumn=join(range(81,81),",")
endif

" set switchbuffer to jump to existing buf in diff tab(works only for quickfix
" like (:cc, :cn, :cp) and split buffer commands(:sb, :sbn,: sbp)
set switchbuf=usetab,newtab,useopen
" use quoteplus instead of quotequote register
set clipboard=unnamed

" setting different colorscheme for vimdiff
if &diff
    colorscheme industry
endif
"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
let python_highlight_all=1
syntax on

set guifont=Monaco:h16
