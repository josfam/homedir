" Vim plugins
call plug#begin()
Plug 'ervandew/supertab'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': 'npm install'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()

set encoding=UTF-8
:set backspace=indent,eol,start

" Start plugins automatically
" autocmd VimEnter * NERDTree

filetype plugin on

" for indentLine
let g:indentLine_char = '┊'

" for coc.nvim ==================================
" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" ==============================================

" For Fzf Vim plugin
let g:fzf_preview_window = 'right:50%'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }  }
" ===============================================

" open terminal below all splits
cabbrev bterm bo term
nnoremap tt :bterm

" Normal key remapping
inoremap jj <esc>
nnoremap tt <C-W>l " move to right of vertically split window
nnoremap yy <C-W>h " move to left of vertically split window
nnoremap >> <C-w>>
nnoremap << <C-w><
nnoremap qq :q<CR>
nnoremap ww :w<CR>
" move to bottom of horizontally split windows
nnoremap mm <C-W>j 
" move to the top of horizontally split windows
nnoremap uu <C-W>k
" open terminal at the bottom of all splits
nnoremap <C-t> :bterm
command! Tr :NERDTree

set number

" Line 80 coloring
set colorcolumn=80

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Indentation for C files (ALX Betty requirement).
set smartindent
set cindent

" Remove all trailing whitespace by pressing F5 (For ALX Betty)
" Script got from Stack Overflow
" https://vi.stackexchange.com/questions/454/whats-the-simplest-way-to-strip-trailing-whitespace-from-all-lines-in-a-file
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Use space characters instead of tabs. (disabled due to ALX Betty rules)
" set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Remap CTRL+SHIFT+h to :split
nnoremap <C-S-h> :split<CR>

" Remap CTRL+SHIFT+i to :vsplit
nnoremap <C-S-i> :vsplit<CR>

" Remap CTRL+SHIFT+l to :split
nnoremap <C-s-l> :split<CR>

" PLUGINS ---------------------------------------------------------------- {{{

" Plugin code goes here.

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
