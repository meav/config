set number
set relativenumber
set numberwidth=4
setlocal foldmethod=syntax

silent! call plug#begin()
Plug 'C:\Users\vhd\Desktop\Neovim\Neovim\plug\fold'
Plug 'C:\Users\vhd\Desktop\Neovim\Neovim\plug\garden-theme'
Plug 'C:\Users\vhd\Desktop\Neovim\Neovim\plug\MatchTag'
Plug 'C:\Users\vhd\Desktop\Neovim\Neovim\plug\lightline'
Plug 'C:\Users\vhd\Desktop\Neovim\Neovim\plug\surround'
call plug#end()

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
      \             [ 'open', 'filetype', 'close' ],
      \             [ 'percent' ],
      \             [ 'lineinfo' ],
      \             [ 'mode' ] ]
      \ },
      \ 'inactive': {
      \   'left': [ [ 'filename' ],
      \             [ 'readonly', 'modified', 'split' ] ],
      \   'right': [ [ 'fileencoding' ],
      \             [ 'fileformat' ],
      \             [ 'open','filetype','close' ],
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
      \   'filetype': '%Y',
      \   'lineinfo': '%l/%L',
      \   'split': '|',
      \   'open': '',
      \   'close': '',
      \ },
      \ 'component_function': {
      \   'readonly': 'LightlineReadonly',
      \   'clock': 'LightlineClock',
      \   'ampm': 'LightlineAmpm',
      \   'date': 'LightlineDate',
      \ },
      \ }

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
