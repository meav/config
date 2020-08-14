set number
set relativenumber
set numberwidth=4
setlocal foldmethod=syntax

silent! call plug#begin()
Plug 'C:\Users\vhd\Desktop\Neovim\Neovim\plug\nerdtree'
Plug 'C:\Users\vhd\Desktop\Neovim\Neovim\plug\fold'
Plug 'C:\Users\vhd\Desktop\Neovim\Neovim\plug\garden-theme'
Plug 'C:\Users\vhd\Desktop\Neovim\Neovim\plug\MatchTag'
Plug 'C:\Users\vhd\Desktop\Neovim\Neovim\plug\lightline'
Plug 'C:\Users\vhd\Desktop\Neovim\Neovim\plug\surround'
Plug 'C:\Users\vhd\Desktop\Neovim\Neovim\plug\devicons'
call plug#end()

let g:loaded_netrwPlugin = 1
let NERDTreeQuitOnOpen=3
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos="right"
let NERDTreeWinSize=80
let NERDTreeDirArrowExpandable=""
let NERDTreeDirArrowCollapsible=""
let NERDTreeCustomOpenArgs={'file': {'reuse':'currenttab', 'where':'p', 'keepopen':1, 'stay':1}}
command E NERDTreeCWD

set termguicolors     " enable true colors support
set guicursor=n-v-ve:hor20-Cursorgreen/lCursorgreen,i-c-ci:ver25,r-cr:hor20-blinkwait300-blinkon200-blinkoff15,o:hor50
colorscheme garden

set noshowmode
set showtabline=2

let g:lightline = {
      \ 'colorscheme': 'ayu_mirage',
      \ 'active': {
      \   'left': [ [ 'filename' ],
      \             [ 'readonly', 'modified', 'split' ] ],
      \   'right': [ [ 'fileencoding' ],
      \             [ 'fileformat' ],
      \             [ 'percent' ],
      \             [ 'lineinfo' ],
      \             [ 'mode' ] ]
      \ },
      \ 'inactive': {
      \   'left': [ [ 'filename' ],
      \             [ 'readonly', 'modified', 'split' ] ],
      \   'right': [ [ 'fileencoding' ],
      \             [ 'fileformat' ],
      \             [ 'percent' ],
      \             [ 'lineinfo' ],
      \             [ 'mode' ] ]
      \ },
      \   'tabline': {
      \     'left': [['tabs']],
      \     'right': [['date'],
      \              ['ampm'],
      \              ['clock']]
      \   },
      \ 'component': {
      \   'filename': '%F',
      \   'lineinfo': '%l/%L',
      \   'split': '|',
      \ },
      \ 'component_function': {
      \   'readonly': 'LightlineReadonly',
      \   'clock': 'LightlineClock',
      \   'ampm': 'LightlineAmpm',
      \   'date': 'LightlineDate',
      \   'fileformat': 'MyFileformat',
      \ }
      \ }

function! MyFileformat()
  return &fileformat . ' ' . WebDevIconsGetFileFormatSymbol()
endfunction

function! LightlineReadonly()
  return &readonly ? '[Read-only]' : ''
endfunction

function! LightlineClock()
  return strftime('%I:%M')
endfunction

function! LightlineAmpm()
  return strftime('%p')
endfunction

function! LightlineDate()
  return strftime('%A, %d/%m/%Y')
endfunction

map <C-a> <esc>:%y*<CR>
map <C-h> <esc><C-w>h
map <C-j> <esc><C-w>j
map <C-k> <esc><C-w>k
map <C-l> <esc><C-w>l
