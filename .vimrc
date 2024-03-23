" set mouse=a
set thesaurus+=~/Documents/moby-thesaurus.txt
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
 
let g:ale_completion_enabled=1
let g:ale_linters = {
   \ 'go': ['gopls'],
   \}
