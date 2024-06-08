# Vi(m)

[.vimrc](.vimrc)  
[Config files](.vim)

## Auto save for markdown files

- https://stackoverflow.com/a/60095826
- https://stackoverflow.com/a/63589188


`.vimrc`
```
" Auto save for markdown files in insert mode
 18 autocmd BufNewFile,BufRead *.md :autocmd TextChangedI <buffer> if &readonly 
== 0 | silent w    rite | endif

```


## Copy-paste

Check if compiled with clipboard support
```
vim --version | grep clipboard

# or
:echo has('clipboard'))
```

Paste from clipboards (When compiled with +clipboard option
```
"+p
"*p
```

Copy large number of lines

1. In command mode mark starting line: `ma`
1. In command mode, at last line, yank from mark: ``y`a``

This can be used to delete too ``d`a``


## Tabs
Open file in new tab
```
:tabedit <file>
```

```
# Goto tab
[tab number]gt

# e.g. 2gt will go to second tab  
```

## _Esc_ ape from insert mode is slow

https://vi.stackexchange.com/a/20220
```
set tttimeoutlen=5
```


## Builtin file explorer: `netrw`

- https://www.vim.org/scripts/script.php?script_id=1075
- https://neovim.io/doc/user/pi_netrw.html

```
# Start with
:Explore
:Sexplore
:Vexplore
```

## Color schemes
```
# See available
:colorscheme [space] [CTRL+D]
```

The built in colorschemes are in `/usr/share/vim/vim90/colors/`



## Plugins
1. [git gutter](https://github.com/airblade/vim-gitgutter)
2. [A.L.E](https://github.com/dense-analysis/ale)
3. ~~[NERDTree](https://github.com/preservim/nerdtree)~~ 
Actually, the "builtin" explorer `netrw` is good enough for me.
