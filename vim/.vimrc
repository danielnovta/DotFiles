colo desert256
" colo elflord
set nowrap
set number
set ruler
set wildmenu
set showcmd
set showmatch
set nopaste

" Easymotion Mapping
let mapleader = "," " map leader to comma
" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1
nmap L <Plug>(easymotion-lineforward)
nmap H <Plug>(easymotion-linebackward)
nmap  <C-j> <Plug>(easymotion-j)
nmap  <C-k> <Plug>(easymotion-k)
nmap s <Plug>(easymotion-overwin-f2)
nmap F <Plug>(easymotion-overwin-f)

" encoding/format
set encoding=utf-8
set fileformats=unix,dos,mac

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" indent
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set expandtab


" key timeout values
set esckeys
set ttimeoutlen=20
set timeoutlen=1000

" allow syntax and filetype plugins
syntax enable
filetype plugin indent on
runtime macros/matchit.vim

" german mappings
nmap ö ;

nmap <C-t> :tabnew<CR>

nmap <C-TAB> gt
nmap <C-S-TAB> gT

nmap <C-F2>:source $MYVIMRC 
""nmap <F3>:noh
nmap <F4> :q!

" Hack on uberspace to enter VisualBlock
:command! Vb :execute "normal! \<C-v>"

" commands
:command! SourceMyVimrc :execute "source $MYVIMRC<BAR>echom 'hep'"
:command! EditMyVimrc :execute "edit $MYVIMRC"
:command! HelpTagsRefresh :execute "helptags ALL"

"sourround tweeks
vmap ( S)
vmap " S"
vmap { S}
vmap ' S'
vmap [ S]
vmap < S<

"bracket clossing
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap < <><Left>
inoremap ' ''<Left>
inoremap " ""<Left>

" Function keys
nmap <F1> :NERDTreeToggle<CR> " open/close NerdTreeWindow
nmap <F2> :w                  " open TabNew
nmap <F3> :noh<CR>            " hide SearchHighlighting

" Status bar
set laststatus=2

set statusline=
set statusline+=%0*\ %n\                                 " Buffer number
set statusline+=%1*\ %<%F%m%r%h%w\                       " File path, modified, readonly, helpfile, preview
set statusline+=%3*â”‚                                     " Separator
set statusline+=%2*\ %Y\                                 " FileType
set statusline+=%3*â”‚                                     " Separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
set statusline+=\ (%{&ff})                               " FileFormat (dos/unix..)
set statusline+=%=                                       " Right Side
set statusline+=%2*\ col:\ %02v\                         " Colomn number
set statusline+=%3*â”‚                                     " Separator
set statusline+=%1*\ ln:\ %02l/%L\ (%3p%%)\              " Line number / total lines, percentage of document
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " The current mode
