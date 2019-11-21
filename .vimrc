set nocompatible	          "makes it vi compatible
set hlsearch		            "set highlight on search
set nu			                "sets numbers line
set ruler		                "shows cursor point
set showcmd		              "display incomplete commands
set history=50	            "keeps previous 50 commands
set incsearch		            "highlights search as you type
set ls=2		                "set no of status lines=2
set tabstop=2		            "width of tab
set softtabstop=2     	    "soft tab width
set shiftwidth=2            "shift tab
set expandtab		            "expand of tab
set cursorline
filetype plugin indent on   "indenton on
syntax enable               "enabling syntax color
set autoindent              "this enable my autoindent
let mapleader=","           "to set leader
set backspace=indent,eol,start

colorscheme purify

" for coloum highlighting after 79
" call matchadd("ErrorMsg", "\\%>79v.\\+",)

" for highlighting
  " highlight GroupA ctermbg=lightgreen
  " highlight GroupB ctermbg=DarkMagenta
  " highlight GroupC ctermbg=DarkCyan

" Highlight 2 or more consequal spaces
  " call matchadd("GroupC", '\S\zs\s\{2,}',9)

" Highlight trailing spaces
  " call matchadd("GroupB", ' \+$')


" enabling fold method
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" all normal map things
  "save and return to insert mode
inoremap <Leader>s <ESC>:w<CR>i
  "visual selecting whole file
noremap <Leader>v ggvG$
  "indenting the whole file
noremap <Leader>i gg=G
  "save and exit
noremap <Leader>qq <ESC>:wq<CR>
  "yank to system clipboard
noremap <c-y> "*y


"map for vim panes
  "open panes in tabs mode
noremap <c-t> <c-w>v<c-w><S-t>
  "next tab
noremap <Leader>] :tabnext<CR>
  "prev tab
noremap <Leader>[ :tabprev<CR>

"for nerd tree
  "show the fizy finder window
noremap <Leader>; :NERDTreeToggle<CR>

" for pane map
  "toggle between different pane
noremap <leader>wt <C-w>w<C-w>_

" map for yankring
  "to show yankring
noremap <Leader>y :YRShow<CR>

" map for commenting
  "commenting a single line
map <Leader>c gcc
  "commenting the whole paragraph
map <Leader>a gcap

" this is for conceal and indent line
  "enabling conceal features
set conceallevel=1
  "indent line level, 0 for disable
let g:indentLine_conceallevel=2
  "different color for indent line
let g:indentLine_color_term = 239

" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" for auto complete on java script, but it does not work
" filetype plugin on
" set omnifunc=syntaxcomplete

" for pathogen execution
" execute pathogen#infect()

" to prevent clash with youcompleteme, change snippet trigger
" imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
" smap <C-J> <Plug>snipMateNextOrTrigger


" all plugins are here
call plug#begin('~/.vim/plugged')  "installer for simple vim plugin manager
Plug 'kyoz/purify', { 'rtp': 'vim' }
" Plug 'terryma/vim-multiple-cursors'                               "multicursors plugin
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } "fizzy finder plugin
" Plug 'junegunn/fzf.vim'                                           "fizzy finder plugin
Plug 'Yggdroot/indentLine'                                        "indent line plugin
Plug 'vim-scripts/YankRing.vim'                                   "yankring plugin
Plug 'SirVer/ultisnips'
call plug#end()

" i have to put the colorscheme in the last, unless it may not work
"chalanger-deep,papercolor
highlight Normal ctermfg=white ctermbg=black

let g:lightline = {'colorscheme': 'purify'}
source ~/vimFile/structureOfVim.sh
