" vim-plug
let plug_path='~/.config/nvim/plugged/'
call plug#begin(plug_path)
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'kien/ctrlp.vim'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdcommenter'
Plug 'mileszs/ack.vim'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'sjl/gundo.vim'
" golang
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'}
" Plug 'stamblerre/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh'  }
" Plug 'deoplete-plugins/deoplete-go', { 'do': 'make' }
" js
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
" python
Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'
" view
Plug 'tomasr/molokai'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Yggdroot/indentLine'
Plug 'kien/rainbow_parentheses.vim'
" markdown
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown'
" other
Plug 'vim-scripts/nginx.vim'
Plug plug_path.'Solarized'
Plug plug_path.'mark.vim'
call plug#end()


" ------------------------------- common setting ------------------------
"
scriptencoding utf-8
syntax on
syntax enable
set undofile
set mouse=                 " disable mouse usage
set background=dark
set mousehide               " Hide the mouse cursor while typing
set cursorline                  " Highlight current line
set showmode                    " Display the current mode
set backspace=indent,eol,start  " Backspace for dummies
set linespace=0                 " No extra spaces between rows
set number                      " Line numbers on
set relativenumber              " 相对行号: 行号变成相对，可以用 nj/nk 进行跳转
set showmatch                   " Show matching brackets/parenthesis

" search
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present

set winminheight=0              " Windows can be 0 line high
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor

set autoindent                  " Indent at the same level of the previous line
set smartindent
set cindent
"set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
"set cinkeys=0{,0},0),:,!^F,o,O,e
set showcmd                     " show the cmd you input
set ruler                       " show the current position

" TAB
set shiftwidth=4                " Use indents of 4 spaces
set tabstop=4                   " An indentation every four columns
set softtabstop=4               " Let backspace delete indent
set shiftround
set expandtab

"set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2
set foldmethod=marker
set foldlevel=99
set updatetime=1000

" don't automatically wrap text when typing
set formatoptions-=t

" don't automatically wrap on load
set nowrap

" disable stupid backup and swap files - they trigger too many events for file
" system watchers
set nobackup
set nowritebackup
set noswapfile

" 设置新文件的编码为 UTF-8
set encoding=utf-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
set langmenu=zh_CN.UTF-8
" 下面这句只影响普通模式 (非图形界面) 下的 Vim
set termencoding=&encoding


let mapleader = ','

" 复制选中区到系统剪切板中
noremap <leader>y "+y

nnoremap <space> za

nnoremap <c-h> <c-w><c-h>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap H ^
nnoremap L $

nnoremap <leader>" ciw""<esc>P
nnoremap <leader>' ciw''<esc>P
nnoremap <leader>< ciw<><esc>P
nnoremap <leader>( ciw()<esc>P
nnoremap <leader>[ ciw[]<esc>P
nnoremap <leader>{ ciw{}<esc>P
nnoremap <silent><leader>q :q<cr>
nnoremap <silent><leader>Q :q!<cr>
nnoremap <silent><leader>w :w<cr>
nnoremap <silent><leader>e :qa<cr>
nnoremap <silent><leader>x :x<cr>
" close <c-q> fun, avoid launch vitual mode
nnoremap <c-q> <esc>
" to sudo & write a file
nnoremap <leader>W :execute 'w !sudo tee >/dev/null %' \| :e!<cr>
nnoremap <leader>X :execute 'w !sudo tee >/dev/null %' \| :q!<cr>

vnoremap <leader>" di""<esc>P
vnoremap <leader>' di''<esc>P
vnoremap <leader>< di<><esc>P
vnoremap <leader>( di()<esc>P
vnoremap <leader>[ di[]<esc>P
vnoremap <leader>{ di{}<esc>P
vnoremap * y/0<cr>
vnoremap # y?0<cr>
" 调整缩进后自动选中，方便再次操作
vnoremap < <gv
vnoremap > >gv
vnoremap <space> 0<c-v>I <esc>gvV

"insert mode keymap
inoremap <c-b> <left>
inoremap <c-f> <right>
inoremap <c-a> <home>
inoremap <c-e> <end>
inoremap <c-d> <del>
inoremap <c-j> <esc>o

" TAB
map <silent><c-b> :tabnext<cr>
map <silent><c-f> :tabprev<cr>
map <leader>te :tabedit<cr>
map <leader>td :tabclose<cr>
map <leader>tm :tabm<cr>

" normal模式下切换到确切的tab
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

"ex mode keymap
cnoremap <c-d> <del>
cnoremap <c-a> <Home>
cnoremap <c-b> <left>
cnoremap <c-f> <right>
cnoremap <c-x> <c-f>

" nvim/neovim terminal
tnoremap <c-q> <c-\><c-n>
"tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
let $CONF = "~/.config/nvim/init.vim"

nnoremap <leader>C :!rm ~/.local/share/nvim/swap/* -rf<cr>
nnoremap <leader>T :vs term://zsh<cr>a

nnoremap <esc><esc> :nohlsearch<CR>


" highlight the char which over length of 80
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" 1
" highlight OverLength ctermbg=red
" match OverLength /\%81v.\+/
" 2
" highlight ColorColumn ctermbg=188
set colorcolumn=80

" highlight the redundance space
"highlight BadWhitespace ctermbg=red
"match BadWhitespace /\s\+$/


" ---------------------- event -------------------------------
"
autocmd BufWritePost *.md :silent!%s/\t/    /g

" 插入模式下用绝对行号, 普通模式下用相对
au FocusLost * :set norelativenumber number
au FocusGained * :set relativenumber
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber

" vimrc文件修改之后自动加载, linux
autocmd! bufwritepost .init.vim source %


" set python config
"autocmd BufNewFile,BufRead *.py exec ":call SetPythonConfig()"
"func SetPythonConfig()
"    set textwidth=79
"    set fileformat=unix
"    set foldmethod=indent
"    nnoremap <space> za
"endfunc
autocmd BufNewFile,BufRead *.py
            \ set textwidth=79 |
            \ set fileformat=unix |
            \ set foldmethod=indent |
            \ set foldnestmax=2 |
            \ set expandtab |  " Tabs are spaces, not tabs
            \ set shiftround   " round indent to multiple of 'shiftwidth'"

autocmd BufNewFile *.py call append(0, "\# -*- coding: utf-8 -*-")

" set web config
"au BufNewFile,BufRead *.js,*.html,*.css
"            \ set tabstop=2 |
"            \ set softtabstop=2 |
"            \ set shiftwidth=2
" nginx.conf 语法高亮, 必须在×.conf语法高亮之前配置
au BufRead,BufNewFile /etc/nginx/*,/usr/local/nginx/conf/* setfiletype nginx

" 语法高亮 .conf 文件
autocmd BufRead,BufNewFile *.conf setf dosini

"autocmd FileType python set makeprg=pylint\ --reports=n\ --msg-template=\"{path}:{line}:\ {msg_id}\ {symbol},\ {obj}\ {msg}\"\ %:p autocmd FileType python set errorformat=%f:%l:\ %m

" ------------------------- other setting --------------------
" F2 行号开关，用于鼠标复制代码用
" 为方便复制，用<F2>开启/关闭行号显示:
function! HideNumber()
    if(&relativenumber == &number)
        set relativenumber! number!
    elseif(&number)
        set number!
    else
        set relativenumber!
    endif
    set number?
endfunc
nnoremap <F2> :call HideNumber()<CR>
" F3 显示可打印字符开关
nnoremap <F3> :set list! list?<CR>
" F4 换行开关
nnoremap <F4> :set wrap! wrap?<CR>
"    when in insert mode, press <F5> to go to
"    paste mode, where you can paste mass data
"    that won't be autoindented

"    F5
au FileType python nnoremap <f5> :!python3 %<cr>
au FileType go nnoremap <f5> :!go run %<cr>


set pastetoggle=<F6>
" disbale paste mode when leaving insert mode
au InsertLeave * set nopaste
" F6 set paste问题已解决, 粘贴代码前不需要按F5了
" F6 粘贴模式paste_mode开关,用于有格式的代码粘贴
" Automatically set paste mode in Vim when pasting in insert mode
function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()


" ------------------------- plugin setting ----------------------
"
" mark.vim
nnoremap <leader>c :MarkClear<cr>

" molokai
" let g:molokai_original=1
let g:rehash256=1

" solarized
 colorscheme solarized
" colorscheme distinguished
" colorscheme github
" colorscheme molokai
" colorscheme zenburn
set t_Co=256
" set term=screen-256color

" tagbar
nnoremap <leader>t :TagbarToggle<CR>
let g:tagbar_autofocus = 1
set updatetime=1000

" NERDTree
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

let OmniCpp_NamespaceSearch = 2 "search namespaces in the current buffer and in include files

" tag
set tags=tags;
nmap <leader>j :tn<cr>
nmap <leader>k :tp<cr>
"nmap <leader>ts :ts<cr>

" ctrlp
"let g:ctrlp_map = '<leader>p'
"let g:ctrlp_by_filename = 1
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_root_markers = ["tags", "cscope.out"]
let g:ctrlp_clear_cache_on_exit = 0
set wildignore=*.o,*.obj,*.d,*/.git/*,*.a,*.so,*.pyc,*/__pycache__/*,*/venv/*
"nnoremap <leader>b :CtrlPBuffer<cr>
"nnoremap <leader>u :CtrlPMRUFiles<cr>

" easymotion
map <leader><leader>h <plug>(easymotion-linebackward)
map <leader><leader>l <plug>(easymotion-lineforward)
map f <leader><leader>w
map F <leader><leader>b

" jedi-vim
let g:jedi#completions_enabled = 0
let g:jedi#popup_select_first = 0
let g:jedi#completions_command = "<c-l>"
let g:jedi#popup_on_dot = 0

" supertab
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

" deoplete
let g:deoplete#enable_at_startup=1

" neomake
"let g:neomake_python_enable_makers = ['pylint', 'flake8', 'pep8']
let g:neomake_python_enable_makers = ['flake8', 'pep8']
let g:neomake_shell_enable_makers = ['shellcheck']
"let g:neomake_verbose=2
"let g:neomake_echo_current_error=1
"let g:neomake_open_list=1
autocmd! BufWritePost * Neomake

" vim-better-whitespace
autocmd! BufEnter *.py EnableStripWhitespaceOnSave
autocmd! BufWritePost *.py StripWhitespace

" nerdcommenter
" let g:NERDRemoveExtraSpaces = 0
let g:NERDDefaultAlign = 'left'

" ack.vim
let g:ackprg = 'ag --vimgrep --smart-case'
nnoremap <leader>a :Ack! -w <c-r><c-w><cr>

" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" gundo
nnoremap <f7> :GundoToggle<CR>

" vim-snippet
let g:ultisnips_python_style = 'sphinx'

" markdown
" don't auto open chrome for preview
let g:instant_markdown_autostart = 0
map <F8> :InstantMarkdownPreview<cr>

" rainbow_parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" -------------------- other vim config ----------
source ~/.config/nvim/google_python_style.vim

function! Zoom ()
    " check if is the zoomed state (tabnumber > 1 && window == 1)
    if tabpagenr('$') > 1 && tabpagewinnr(tabpagenr(), '$') == 1
        let l:cur_winview = winsaveview()
        let l:cur_bufname = bufname('')
        tabclose

        " restore the view
        if l:cur_bufname == bufname('')
            call winrestview(cur_winview)
        endif
    else
        tab split
    endif
endfunction

nmap <leader>z :call Zoom()<CR>
let g:python3_host_prog = '~/.env/py3/bin/python'

" IndentLines
map <F9> :IndentLinesToggle<cr>
