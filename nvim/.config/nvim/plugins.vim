call plug#begin()
Plug 'rbong/vim-crystalline'
Plug 'yassinebridi/vim-purpura'
Plug 'kovetskiy/sxhkd-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release', 'on': []}
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'tpope/vim-commentary'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'voldikss/vim-floaterm'
Plug 'pseewald/vim-anyfold'
Plug 'thaerkh/vim-workspace'
Plug 'jparise/vim-graphql'
Plug 'jiangmiao/auto-pairs'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'rust-lang/rust.vim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'windwp/vim-floaterm-repl'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'json', 'graphql', 'markdown', 'yaml'] }
call plug#end()
