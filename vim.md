# Vi(m)

[.vimrc](.vimrc)  
[Config files](.vim)

```
# Check if compiled with clipboard support
vim --version | grep clipboard

# or
:echo has('clipboard'))
```
```
# Paste from clipboards (When compiled with +clipboard option
"+p
"*p
```

```
# Open file in new tab
:tabedit <file>
```

```
# Goto tab
[tab number]gt

# e.g. 2gt will go to second tab  
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

## Plugins
1. [git gutter](https://github.com/airblade/vim-gitgutter)
2. [A.L.E](https://github.com/dense-analysis/ale)
3. ~~[NERDTree](https://github.com/preservim/nerdtree)~~ 
Actually, the "builtin" explorer `netrw` is good enough for me.
