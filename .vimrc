" set mouse=a
set nu
set laststatus=2
set statusline=
set statusline+=%=
set statusline+=\[%c]
set statusline+=\ %l/
set statusline+=%L
filetype plugin on
filetype indent on
set expandtab
set shiftwidth=4

" https://vi.stackexchange.com/a/20220
set ttimeoutlen=5 

" Auto save for markdown files in insert mode
autocmd BufNewFile,BufRead *.md :autocmd TextChangedI <buffer> if &readonly == 0 | silent write | endif


" LSP stuff
let g:ale_completion_enabled=1
let g:ale_linters = {
  \ 'go': ['gopls'],
  \}

