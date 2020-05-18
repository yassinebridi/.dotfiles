call plug#begin()
Plug 'rbong/vim-crystalline'
Plug 'yassinebridi/vim-purpura'
Plug 'terryma/vim-multiple-cursors'
Plug 'kovetskiy/sxhkd-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release', 'on': []}
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'lilydjwg/colorizer'
Plug 'tpope/vim-commentary'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'jeetsukumaran/vim-indentwise'
Plug 'cespare/vim-toml'
Plug 'voldikss/vim-floaterm'
Plug 'raghur/vim-ghost', {'do': ':GhostInstall'}
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'json', 'graphql', 'markdown'] }
call plug#end()
