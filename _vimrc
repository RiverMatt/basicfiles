" vimrc for Windows

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=ucs-bom,utf-8,latin1
endif

" Windows Tweaks
set winaltkeys=no
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
"set guioptions-=m "remove menu bar
set go-=L " Removes left hand scroll bar
set guioptions-=M
set guifont=Consolas:h12



set nocompatible	" Use Vim defaults (much better!)
set bs=indent,eol,start		" allow backspacing over everything in insert mode
set ai			" always set autoindenting on
"set backup		" keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
			" than 50 lines of registers
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time

" Only do this part when compiled with support for autocommands
if has("autocmd")
  augroup redhat
  autocmd!
  " In text files, always limit the width of text to 78 characters
  " autocmd BufRead *.txt set tw=78
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
  " don't write swapfile on most commonly used directories for NFS mounts or USB sticks
  autocmd BufNewFile,BufReadPre /media/*,/run/media/*,/mnt/* set directory=~/tmp,/var/tmp,/tmp
  " start with spec file template
  autocmd BufNewFile *.spec 0r /usr/share/vim/vimfiles/template.spec
  augroup END
endif

if has("cscope") && filereadable("/usr/bin/cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add $PWD/cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

filetype plugin on

"if &term=="xterm"
     set t_Co=8
     set t_Sb=[4%dm
     set t_Sf=[3%dm
"endif

" Don't wake up system with blinking cursor:
" http://www.linuxpowertop.org/known.php
let &guicursor = &guicursor . ",a:blinkon0"
set list lcs=tab:\¦\ 

" Tweaks
set number
colo desert
"colo delek

" Custom keybinds
nnoremap <CR> i<CR><Esc>
nnoremap <Space> i<Space><Esc>l
nnoremap <Tab> i<Tab><Esc>l
nnoremap <BS> hx<Esc>
nnoremap ,/ @="mc0i//\<lt>Esc>`cj"<CR>
nnoremap ,,/ mc0xx`cj
nnoremap ,* mc^i/*<Space><Esc>$a<Space>*/<Esc>`clll
nnoremap ,,* mc^xxx$xxx`chhh
nnoremap ,< mc^i<!--<Space><Esc>$a<Space>--><Esc>`clllll
nnoremap ,,< mc^xxxxx$xxxx`chhhhh
nnoremap ,# @="mc0i#\<lt>Esc>`cj"<CR>
nnoremap ,,# mc0x`cj
nnoremap ," @="mc0i\"\<lt>Esc>`cj"<CR>
nnoremap ,," mc0x`cj
nnoremap ,- @="mc0i//-----------------------------------------------------------------------------\<lt>Esc>`cj"<CR>
nnoremap ,. @="mc0i//.............................................................................\<lt>Esc>`cj"<CR>
nnoremap ; a;<Esc>l
inoremap {{ {<CR><Tab><Esc>mci<CR>}<Esc>`ca<Tab>

" Navigating splits
"map <S-J> :tabp<CR>
"map <S-K> :tabn<CR>
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
"map _ <C-W>

inoremap <A-h> <Esc>h
inoremap <A-j> <Esc>j
inoremap <A-k> <Esc>k
inoremap <A-l> <Esc>l



set shiftwidth=2

set foldmethod=marker
	autocmd filetype html set foldmarker=<!--{{{-->,<!--}}}-->
"	autocmd BufRead,BufNewFile *.html set foldmarker=<!--{{{-->,<!--}}}-->

"set foldmethod=indent
"	au BufRead * normal zM

" For Python
"set softtabstop=4
"set tabstop=4
"set expandtab

" Plugins and addons

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


