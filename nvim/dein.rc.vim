if &compatible
  set nocompatible
endif

let s:dein_dir = expand('~/.config/nvim/dein')

if !dein#load_state(s:dein_dir)
  finish
endif

call dein#begin(s:dein_dir)
call dein#load_toml('~/.config/nvim/dein/dein.toml',          {'lazy': 0})
call dein#load_toml('~/.config/nvim/dein/dein_lazy.toml',     {'lazy': 1})
call dein#load_toml('~/.config/nvim/dein/dein_neo.toml',      {'lazy': 1})
call dein#load_toml('~/.config/nvim/dein/dein_python.toml',   {'lazy': 1})
call dein#load_toml('~/.config/nvim/dein/dein_go.toml',       {'lazy': 1})
call dein#load_toml('~/.config/nvim/dein/dein_front.toml',    {'lazy': 1})
call dein#end()
call dein#save_state()

if !has('vim_starting') && dein#check_install()
  call dein#install()
endif

