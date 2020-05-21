" Change filetype depending on the textarea in the domain
" if github for example, use markdown instead of txt
function! s:SetupGhostBuffer()
    if match(expand("%:a"), '\v/ghost-(github|reddit)\.com-')
        set ft=markdown
    endif
endfunction

augroup vim-ghost
    au!
    au User vim-ghost#connected call s:SetupGhostBuffer()
augroup END
