call plug#begin()
" Syntax Highlighting
Plug 'kovetskiy/sxhkd-vim'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jparise/vim-graphql'
Plug 'rust-lang/rust.vim'
Plug 'pantharshit00/vim-prisma'
Plug 'jidn/vim-dbml'
" Main
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release', 'on': []}
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'json', 'graphql', 'markdown', 'yaml'] }
" Utils
Plug 'tpope/vim-commentary'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'pseewald/vim-anyfold'
Plug 'voldikss/vim-floaterm'
Plug 'thaerkh/vim-workspace'
Plug 'jiangmiao/auto-pairs'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'windwp/vim-floaterm-repl'
" Theme
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'lambdalisue/nerdfont.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" Disabled
" Plug 'rbong/vim-crystalline'
" Plug 'yassinebridi/vim-purpura'
call plug#end()
