" PHP docblock
abb _php <?php<Enter>/**<Enter> * Description<Enter>*<Enter>* PHP Version 5<Enter>*<Enter>* @author Myke Stubbs <myke.stubbs@escapemg.com><Enter>* @copyright 2009 Escape Media Group Inc.<Enter>* @package SomePackage<Enter>*/<Enter><BS>?>
" MXML document open w/ <mx:Application>
abb _mxml <?xml version="1.0" encoding="utf-8"?><Enter><mx:Application xmlns:mx="http://www.adobe.com/2006/mxml"><Enter><Enter></mx:Application><ESC>kki
" <mx:Script>
abb _mxscript <Tab><mx:Script><Enter><Tab><![CDATA[<Enter><Enter>]]> <Enter></mx:Script><ESC>ki

"Not Vi
set nocompatible

filetype on
filetype indent on
filetype plugin on
compiler ruby

"colorscheme baycomb
colorscheme ir_black
syntax on
set background=light
set background=dark
set sts=4
set et
" disable wraparound
set nowrap

" auto tabs
set autoindent
set shiftwidth=2 tabstop=2 softtabstop=2

map <F7> :perldo s/\cM//
" display line numbers
"set number
" Use mouse everywhere
"set mouse=a
" turn paste mode on and off with F3
set pastetoggle=<F3>
" automatically return to previous line number
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
vnoremap < <gv
vnoremap > >gv

" No longer use tabs in vim;  screen pwns
"let mapleader = ","
"map <F2> :call DoHighlight()<cr>
"map <leader>tt :tabnew<cr>
"map <leader>tc :tabclose<cr>
"map <leader>tm :tabmove
"map <leader>tn :tabnext<cr>
"map <leader>tp :tabprevious<cr> 
"map <leader>p  :set paste<cr>
"map <leader>np :set nopaste<cr>

" Highlight the current line in insert mode (from Myke)
autocmd InsertLeave * se nocul 
autocmd InsertEnter * se cul

" status-fu (from Myke)
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" Line spacing (from Myke)
set lsp=0

" Match brackets as one types
set showmatch

" MXML/AS syntax highlighting
au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as set filetype=actionscript

" Autofix common typos
abb Declaraion Declaration

" Turn off warning bells so as not to annoy neighbors
set noerrorbells

" Always show status bar
set laststatus=2

" Clear searches with C/
map <C-/> :nohl <CR>

" Home and End remapping magic stuffs
noremap  <expr> <Home> (col('.') == matchend(getline('.'), '^\s*')+1 ? '0'  : '^')
"noremap  <expr> <End>  (col('.') == match(getline('.'),    '\s*$')   ? '$'  : 'g_')
"vnoremap <expr> <End>  (col('.') == match(getline('.'),    '\s*$')   ? '$h' : 'g_')
imap <Home> <C-o><Home>
"imap <End>  <C-o><End>

