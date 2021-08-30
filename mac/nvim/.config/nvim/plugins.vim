call plug#begin()
" Syntax Highlighting
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jparise/vim-graphql'
Plug 'pantharshit00/vim-prisma'
" Main
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release', 'on': []}
" Utils
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
Plug 'tpope/vim-commentary'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'pseewald/vim-anyfold'
Plug 'voldikss/vim-floaterm'
Plug 'thaerkh/vim-workspace'
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-surround'
" Theme
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'lambdalisue/nerdfont.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'sheerun/vim-polyglot'
" Disabled
" Plug 'rbong/vim-crystalline'
" Plug 'yassinebridi/vim-purpura'
call plug#end()
