call plug#begin()
Plug 'rbong/vim-crystalline'
Plug 'yassinebridi/vim-purpura'
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
Plug 'voldikss/vim-floaterm'
Plug 'raghur/vim-ghost', {'do': ':GhostInstall'}
Plug 'pseewald/vim-anyfold'
Plug 'thaerkh/vim-workspace'
Plug 'jparise/vim-graphql'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'json', 'graphql', 'markdown', 'yaml'] }
call plug#end()
