" Change leader mapping
let g:mapleader = ','
let g:maplocalleader = '\'

" Multi line move
noremap k gk
noremap j gj
noremap gk k
noremap gj j
noremap <Down> gj
noremap <Up> gk

" Skip move
noremap H <Nop>
noremap L <Nop>
noremap H ^
noremap L $

" Insert mode move
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-a> <C-o>^
inoremap <C-e> <End>
inoremap <C-d> <Del>

" Change tab width
nnoremap <silent> ts2 :<C-u>setl shiftwidth=2 softtabstop=2<CR>
nnoremap <silent> ts4 :<C-u>setl shiftwidth=4 softtabstop=4<CR>
nnoremap <silent> ts8 :<C-u>setl shiftwidth=8 softtabstop=8<CR>
"
" Disable close window
nnoremap <C-w>c <Nop>

" Resize window
noremap <C-w>> 10<C-w>>
noremap <C-w>< 10<C-w><
noremap <C-w>+ 10<C-w>+
noremap <C-w>- 10<C-w>-

" Search yank string
nnoremap <Space>sy /<C-r>"<CR>
" Search of under cousor
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), "\n", '\\n', 'g')<CR><CR>

" Replace cousor word"
nnoremap <expr> c* ':%s ;\<' . expand('<cword>') . '\>;'
vnoremap <expr> c* ':s ;\<' . expand('<cword>') . '\>;'

" Auto Escape
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'

" Indent keybind for shutcut
nnoremap <silent>> >>
nnoremap <silent>< <<

" Paste explicitly yanked text
nnoremap <Space>p "0p
vnoremap <Space>p "0p

" Paste explicitly yanked text
nnoremap <Space>p "0p
vnoremap <Space>p "0p

" Paste clipboard text
nnoremap <Space>e "*p
vnoremap <Space>e "*p

" Not yank is delete operation
nnoremap x "_x

" Jump quickfix
nnoremap <silent> <C-p> :<C-u>cp<CR>
nnoremap <silent> <C-n> :<C-u>cn<CR>
nnoremap <silent> [f :<C-u>cp<CR>
nnoremap <silent> ]f :<C-u>cn<CR>
nnoremap <silent> [F :<C-u>cfirst<CR>
nnoremap <silent> ]F :<C-u>clast<CR>

" Jump locationlist
nnoremap [t :<C-u>lp<CR>
nnoremap ]t :<C-u>ln<CR>
nnoremap [T :<C-u>lfirst<CR>
nnoremap ]T :<C-u>llast<CR>

" Clear search hi
nnoremap <silent> <Space>h :noh<CR>

" Command line mode mapping emacs like
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
" cnoremap <C-n> <Down>
" cnoremap <C-p> <Up>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>

" Switch to last file
nnoremap <Space><Space> <c-^>

" Terminal normal mode by escape
tnoremap <silent> <ESC> <C-\><C-n>
