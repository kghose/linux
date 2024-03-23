" Apply all the go lang formatters on save
" Assumes ALE is running and we have the go dev tools installed and running
" like gopls etc.
let b:ale_fixers = {'go': ['golines', 'goimports']}

let b:ale_fix_on_save = 1
