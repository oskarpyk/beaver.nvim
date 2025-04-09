call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'scrooloose/nerdtree'
" Plug 'tsony-tsonev/nerdtree-git-plugin'
" Plug 'Xuyuanp/nerdtree-git-plugin' Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'ryanoasis/vim-devicons'
" Plug 'airblade/vim-gitgutter' Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
" Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'christoomey/vim-tmux-navigator'

" Plug 'morhetz/gruvbox'

Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'nvim-tree/nvim-web-devicons'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-treesitter/nvim-treesitter'

" Improved motion in Vim
Plug 'easymotion/vim-easymotion'

"Plug 'sainnhe/sonokai'
Plug 'nvim-telescope/telescope.nvim'

Plug 'MeanderingProgrammer/render-markdown.nvim'

Plug 'vimwiki/vimwiki'


" Plug 'ThePrimeagen/vim-be-good', {'do': '.\install.sh'}

" Lightline statusbar
" Plug 'itchyny/lightline.vim'
" previews substitution and sort using regex
Plug 'markonm/traces.vim'

" NERDTree h l open and close
" Plug 'flw-cn/vim-nerdtree-l-open-h-close'


" Plug 'flw-cn/vim-nerdtree-l-open-h-close'

" To matchit in vue
Plug 'andymass/vim-matchup'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'posva/vim-vue'

" Plug 'sbl/scvim'
" Plug 'supercollider/scvim'
Plug 'davidgranstrom/scnvim', { 'do': {-> scnvim#install() } }
" to show sc documentation in nvim
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' 

Plug 'sersorrel/vim-lilypond'

Plug 'stevearc/dressing.nvim'

"Plug 'sainnhe/sonokai'
" Initialize plugin system
Plug 'johngrib/vim-game-snake'
Plug 'wellle/targets.vim'

Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex'
Plug 'vim-airline/vim-airline'

Plug 'wincent/loupe'

Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'neovimhaskell/haskell-vim'
" Plug 'vim-scripts/tetris'

" Plug 'maxmx03/fluoromachine.nvim' 
Plug 'luisiacc/gruvbox-baby'
" telescope
Plug 'nvim-lua/popup.nvim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'PyGamer0/vim-apl'
Plug 'nvim-lua/plenary.nvim'
Plug 'jpalardy/vim-slime'
Plug 'kblin/vim-fountain'
Plug 'puremourning/vimspector'

Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'rust-lang/rust.vim'

Plug 'monkoose/fzf-hoogle.vim'
Plug 'chipsenkbeil/distant.nvim'
Plug 'evanleck/vim-svelte'
Plug 'thosakwe/vim-flutter'
Plug 'github/copilot.vim'
Plug 'MunifTanjim/nui.nvim'

Plug 'jackMort/ChatGPT.nvim'
"Plug 'frankroeder/parrot.nvim'
Plug 'rcarriga/nvim-notify'

Plug 'nvim-tree/nvim-web-devicons' "or Plug 'echasnovski/mini.icons'
Plug 'HakonHarnes/img-clip.nvim'
"Plug 'zbirenbaum/copilot.lua'


Plug 'junegunn/goyo.vim'
" Plug 'pasky/claude.vim'
"Plug 'madox2/vim-ai'
"Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}

Plug 'yetone/avante.nvim'

Plug 'davidhalter/jedi-vim'
Plug 'joshuavial/aider.nvim'
Plug 'jaimecgomezz/here.term'
Plug 'twilwa/crawler.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug '~/writer.lua'



Plug 'nvim-tree/nvim-tree.lua'

" Plug 'nvim-telescope/telescope.nvim'

" Add your custom Ulysses plugin (local)


call plug#end()

