"=========== VIM CONFIG ============"

"========= Install vimplug ========="
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin(expand('~/.config/nvim/plugged'))

" ================= looks and GUI stuff ================== "

Plug 'ryanoasis/vim-devicons'                           " pretty icons everywhere
Plug 'luochen1990/rainbow'                              " rainbow parenthesis
Plug 'ghifarit53/tokyonight-vim'                        " Tokyonight color theme
Plug 'hzchirs/vim-material'                             " material color themes
Plug 'rakr/vim-one'
Plug 'gregsexton/MatchTag'                              " highlight matching html tags
Plug 'Jorengarenar/vim-MvVis'                           " move visual selection

" ================= Functionalities ================= "

Plug 'neoclide/coc.nvim', {'branch': 'release'}         " LSP and more
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " fzf itself
Plug 'junegunn/fzf.vim'                                 " fuzzy search integration
Plug 'honza/vim-snippets'                               " actual snippets
Plug 'Yggdroot/indentLine'                              " show indentation lines
Plug 'tpope/vim-commentary'                             " better commenting
Plug 'mhinz/vim-startify'                               " cool start up screen
Plug 'tpope/vim-fugitive'                               " git support
Plug 'tpope/vim-rhubarb'
Plug 'psliwka/vim-smoothie'                             " some very smooth ass scrolling
Plug 'tpope/vim-eunuch'                                 " run common Unix commands inside Vim
Plug 'machakann/vim-sandwich'                           " make sandwiches
Plug 'sheerun/vim-polyglot',

" ======================== Helpers =========================="

Plug 'liuchengxu/vim-which-key'
Plug 'unblevable/quick-scope'

" ==================== Php specific plugins ================= "

Plug 'StanAngeloff/php.vim', { 'for': 'php' }
Plug 'stephpy/vim-php-cs-fixer', { 'for': 'php' }
Plug 'jwalton512/vim-blade'
Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install --no-dev -o'}
Plug 'vim-vdebug/vdebug'

" ===================== Airline ============================== "
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-bufferline'

" ================= Terminal ======================="
Plug 'voldikss/vim-floaterm'

call plug#end()



" Sourcing files for individual plugins "
" Settigns
source ~/.config/nvim/setting.vim
source ~/.config/nvim/keybindings.vim
" Plugins
source ~/.config/nvim/plugins-config/coc-config.vim
source ~/.config/nvim/plugins-config/fzf.vim
source ~/.config/nvim/plugins-config/themes.vim
source ~/.config/nvim/plugins-config/which-key.vim
source ~/.config/nvim/plugins-config/airline.vim
source ~/.config/nvim/plugins-config/visual-move.vim
source ~/.config/nvim/plugins-config/float-term.vim
source ~/.config/nvim/plugins-config/startify.vim
source ~/.config/nvim/plugins-config/vdebug.vim

source ~/.config/nvim/plugins-config/functions.vim
