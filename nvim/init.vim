function! s:source_rc(path, ...) abort 
  let l:use_global = get(a:000, 0, !has('vim_starting'))
  let l:abspath = resolve(expand('~/.config/nvim/' . a:path))
  if !l:use_global
    execute 'source' fnameescape(l:abspath)
    return
  endif

  " substitute all 'set' to 'setglobal'
  let l:content = map(readfile(l:abspath),
        \ 'substitute(v:val, "^\\W*\\zsset\\ze\\W", "setglobal", "")')
  " create tempfile and source the tempfile
  let l:tempfile = tempname()
  try
    call writefile(l:content, l:tempfile)
    execute 'source' fnameescape(l:tempfile)
  finally
    if filereadable(l:tempfile)
      call delete(l:tempfile)
    endif
  endtry
endfunction"}}}

augroup MyAutoCmd
    autocmd!
augroup END


"lightline
set laststatus=2

" indent setting
set virtualedit=block
set wrapscan
set formatoptions+=m
set formatoptions-=ro

set ambiwidth=double


" cursor setting
set whichwrap=b,s,<,>,[,]
set backspace=indent,eol,start
set cursorline

" higlight setting
set matchtime=3 "


" command 
set wildmenu
set wildmode=list:full
set wildignore=*.o,*.obj,*.pyc,*.so,*.dll
set history=1000

let s:dein_path = expand('~/.config/nvim/dein')
let s:dein_repo_path = s:dein_path . '/repos/github.com/Shougo/dein.vim'

if !isdirectory(s:dein_repo_path)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_path
endif

let &runtimepath = &runtimepath . "," . s:dein_repo_path



" Python loading
let g:python3_host_prog = '/Users/KeisukeNumata/.config/pyenv36/bin/python'
let g:python2_host_prog = '/Users/KeisukeNumata/.config/pyenv27/bin/python'

call s:source_rc('mappings.rc.vim')
call s:source_rc('options.rc.vim')
call s:source_rc('filetype.rc.vim')
call s:source_rc('dein.rc.vim')

" 未インストール確認
if dein#check_install()
    call dein#install()
endif

filetype plugin indent on
syntax enable

let g:tigris#enabled = 1
let g:tigris#on_the_fly_enabled = 1
let g:tigris#delay = 300
