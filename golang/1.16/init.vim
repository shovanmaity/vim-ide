call plug#begin('~/.vim/plugged')
" For markdown files
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" For yaml
Plug 'stephpy/vim-yaml'

" For git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" For browsing file and folder 
Plug 'scrooloose/nerdtree'

" For golang
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'prabirshrestha/vim-lsp'
Plug 'piec/vim-lsp-gopls'
call plug#end()
