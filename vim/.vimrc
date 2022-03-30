" if vim 7.x no package feature feature
" need to add them oneByone
if v:version < 800
    set runtimepath+=~/.vim/pack/plugins/start/mru
    set runtimepath+=~/.vim/pack/plugins/start/nerdtree
    set runtimepath+=~/.vim/pack/plugins/start/vim-easymotion
    set runtimepath+=~/.vim/pack/plugins/start/vim-surround
    set runtimepath+=~/.vim/pack/colors/start/vim-desert256
    set runtimepath+=~/.vim/pack/colors/start/vim-desert256
    set runtimepath+=~/.vim/pack/plugins/start/vim-commentary
endif
" Visual Block HackMeck for uberspace:
map <S-q> :Vb<CR>

"colo elflord 
colo desert256
set nowrap
set number
"set ruler
set nocompatible
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
nmap <F2> :w<cr>              " writeFile
nmap <F3> :noh<CR>            " hide SearchHighlighting
nmap <F4> :MRUToggle<CR>      " open/close RecentFiles

" Status bar
set laststatus=1


" Status Line Custom
    ""\ '^V' : 'V·Block',
let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ "\<C-V>" :'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

set laststatus=2
set noshowmode
set statusline=
set statusline+=%0*\ %n\                                 " Buffer number
set statusline+=%1*\ %<%F%m%r%h%w\                       " File path, modified, readonly, helpfile, preview
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %Y\                                 " FileType
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
set statusline+=\ (%{&ff})                               " FileFormat (dos/unix..)
set statusline+=%=                                       " Right Side
set statusline+=%2*\ col:\ %02v\                         " Colomn number
set statusline+=%3*│                                     " Separator
set statusline+=%1*\ ln:\ %02l/%L\ (%3p%%)\              " Line number / total lines, percentage of document
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " The current mode

hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
hi User2 ctermfg=007 ctermbg=236 guibg=#303030 guifg=#adadad
hi User3 ctermfg=236 ctermbg=236 guibg=#303030 guifg=#303030
hi User4 ctermfg=239 ctermbg=239 guibg=#4e4e4e guifg=#4e4e4e
