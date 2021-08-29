" Start Lazygit
nmap <space>lg :FloatermNew --height=1.0 --width=1.0 lazygit<CR>

" Start Lazydocker
nmap <space>ld :FloatermNew --height=1.0 --width=1.0 lazydocker<CR>

let g:floaterm_autoclose = 2

" Code runner
let g:floaterm_repl_runner= "/home/yaslix/bin/runner"
nnoremap <leader>cp :FloatermRepl<CR>
