" Runtimepath
set rtp+=~/music/config/nvim/plugins/vim-hybrid-material
set rtp+=~/music/config/nvim/plugins/lightline
set rtp+=~/music/config/nvim/plugins/vim-devicons
set rtp+=~/music/config/nvim/plugins/vim-surround
set rtp+=~/music/config/nvim/plugins/vim-venu
set rtp+=~/music/config/nvim/plugins/vim-ps1
set rtp+=~/music/config/nvim/plugins/vim-toml

" Encoding
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" Venu
let s:menu = venu#create('Venu')
"""
let s:help = venu#create('Help')
call venu#addItem(s:help, 'Surround', 'help Surround')
call venu#addItem(s:menu, 'Help', s:help)
"""
call venu#addItem(s:menu, 'List Plugins', '!dir "C:\Users\VHDX\Music\scoop\persist\nvim\plugins"')
"""
call venu#register(s:menu)

" Color
set termguicolors
let g:enable_bold_font = 1
let g:enable_italic_font = 1
set background=light
colorscheme hybrid_material

" Enable highlight syntax
syntax enable

" Cursor
set guicursor=n-v-ve:hor20-Cursorgreen/lCursorgreen,i-c-ci:ver25,r-cr:hor20-blinkwait300-blinkon200-blinkoff15,o:hor50

" Column number
set number
set relativenumber
set numberwidth=4

" Scroll before bottom
set scrolloff=7

" Lightline
set noshowmode
set laststatus=2
set showtabline=2
"""
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
      \   'split': '-',
      \ },
      \ 'component_function': {
      \   'readonly': 'LightlineReadonly',
      \   'clock': 'LightlineClock',
      \   'ampm': 'LightlineAmpm',
      \   'date': 'LightlineDate',
      \   'fileformat': 'MyFileformat',
      \ },
      \ }
"""
function! MyFileformat()
  return &fileformat . ' ' . WebDevIconsGetFileFormatSymbol()
endfunction
"""
function! LightlineReadonly()
  return &readonly ? '[Read-only]' : ''
endfunction
"""
function! LightlineClock()
  return strftime('%I:%M')
endfunction
"""
function! LightlineAmpm()
  return strftime('%p')
endfunction
"""
function! LightlineDate()
  return strftime('%A, %d/%m/%Y')
endfunction
