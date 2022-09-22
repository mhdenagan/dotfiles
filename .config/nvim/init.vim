syntax on
let mapleader =" "

set path+=**
set encoding=utf-8
set noerrorbells
set tabstop=4 softtabstop=4
set expandtab
set smartindent
"set noswapfile
set incsearch
set number relativenumber
"set title
"set bg=light
"set go=a
"set mouse=a
set noshowmode
set clipboard+=unnamedplus
set noruler
set laststatus=0
set noshowcmd
set wildmenu
set wildmode=longest,list,full
set nohlsearch
set scrolloff=10
filetype plugin on

call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'honza/vim-snippets'
Plug 'ap/vim-css-color'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'SirVer/ultisnips'
Plug 'morhetz/gruvbox'
call plug#end()

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_complete_enabled=1


let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e
autocmd BufRead,BufNewFile Xresources,Xdefaults,xresources,xdefaults set filetype=xdefaults
autocmd BufWritePost Xresources,Xdefaults,xresources,xdefaults !xrdb %

" Function for toggling the bottom statusbar:
let s:hidden_all = 1
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

" Compile document, be it groff/LaTeX/markdown/etc.
	map <leader>c :w! \| !compiler "<c-r>%"<CR>

" Open corresponding .pdf/.html or preview
	map <leader>p :!opout <c-r>%<CR><CR>

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
	autocmd VimLeave *.tex !texclear %

autocmd BufRead,BufNewFile *.tex set filetype=tex
autocmd BufRead,BufNewFile *.ms set filetype=groff
autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>


nnoremap <leader>h :call ToggleHiddenAll()<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

map <leader>or :setlocal spell! spelllang=ru<CR>
map <leader>os :setlocal spell! spelllang=sr<CR>
map <leader>oe :setlocal spell! spelllang=en_us<CR>

" russian
set keymap=russian-jcukenwin
set keymap=serbian_utf-8
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
