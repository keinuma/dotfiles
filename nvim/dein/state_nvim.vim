if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/KeisukeNumata/.config/nvim/init.vim', '/Users/KeisukeNumata/.config/nvim/dein/dein.toml', '/Users/KeisukeNumata/.config/nvim/dein/dein_lazy.toml', '/Users/KeisukeNumata/.config/nvim/dein/dein_neo.toml', '/Users/KeisukeNumata/.config/nvim/dein/dein_python.toml', '/Users/KeisukeNumata/.config/nvim/dein/dein_go.toml', '/Users/KeisukeNumata/.config/nvim/dein/dein_front.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/KeisukeNumata/.config/nvim/dein'
let g:dein#_runtime_path = '/Users/KeisukeNumata/.config/nvim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/KeisukeNumata/.config/nvim/dein/.cache/init.vim'
let &runtimepath = '/Users/KeisukeNumata/.config/nvim,/etc/xdg/nvim,/Users/KeisukeNumata/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/Users/KeisukeNumata/.config/nvim/dein/repos/github.com/Shougo/dein.vim,/Users/KeisukeNumata/.config/nvim/dein/.cache/init.vim/.dein,/usr/local/Cellar/neovim/0.2.2_1/share/nvim/runtime,/Users/KeisukeNumata/.config/nvim/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/KeisukeNumata/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/KeisukeNumata/.config/nvim/after'
filetype off
nmap <Space>/ <Plug>(operator-search)if
    nnoremap <silent> <Leader>w :FixWhitespace<CR>
    nnoremap <silent> [denite]<C-i> :<C-u>Denite lab_issue -highlight-mode-insert=Search<CR>
    nnoremap <silent> [denite]<C-m> :<C-u>Denite lab_merge_request -highlight-mode-insert=Search<CR>
    nmap [figitive] <Nop>
    map <Leader>g [figitive]
    nnoremap <silent> [figitive]c :<C-u>Gcommit<CR>
    nnoremap <silent> [figitive]d :<C-u>Gdiff<CR>
    nnoremap <silent> [figitive]b :<C-u>Gblame<CR>
    nnoremap <silent> [figitive]l :<C-u>Glog<CR>
    nnoremap <Space>n :<C-u>NERDTreeToggle<CR>
    let NERDTreeIgnore=['\.pyc$', '__pycache__']
source ~/.config/nvim/plugins/iceberg.rc.vim
let g:deoplete#sources#clang#libclang_path = '/usr/local/Cellar/llvm/6.0.0/lib/libclang.dylib'
let g:deoplete#sources#clang#clang_header = '/usr/local/Cellar/llvm/6.0.0/lib/clang/'
source ~/.config/nvim/plugins/airline.rc.vim
    let g:gista#client#default_username = 'lighttiger2505'
let g:airline_theme='luna'
nmap <silent> <C-u><C-t> :<C-u>Denite filetype<CR>
nmap <silent> <C-u><C-f> :<C-u>Denite file_rec<CR>
nmap <silent> <C-u><C-j> :<C-u>Denite line<CR>
nmap <silent> <C-u><C-g> :<C-u>Denite grep<CR>
nmap <silent> <C-u><C-]> :<C-u>DeniteCursorWord grep<CR>
nmap <silent> <C-u><C-u> :<C-u>Denite file_mru<CR>
nmap <silent> <C-u><C-y> :<C-u>Denite neoyank<CR>
nmap <silent> <C-u><C-r> :<C-u>Denite -resume<CR>
nmap <silent> <C-u>; :<C-u>Denite -resume -immediately -select=+1<CR>
nmap <silent> <C-u>- :<C-u>Denite -resume -immediately -select=-1<CR>
    source ~/.config/nvim/plugins/openbrowser.rc.vim
autocmd dein-events BufRead * call dein#autoload#_on_event("BufRead", ['denite.nvim'])
autocmd dein-events InsertCharPre * call dein#autoload#_on_event("InsertCharPre", ['deoplete.nvim'])
