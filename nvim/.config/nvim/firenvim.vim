let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'always',
        \ },
    \ }
\ }

let fc = g:firenvim_config['localSettings']
let fc['.*'] = { 'takeover': 'never', 'priority': 1 }
let fc['https?://github.com/'] = { 'takeover': 'always', 'priority': 2 }
let fc['https?://stackoverflow.com/'] = { 'takeover': 'always', 'priority': 2 }
