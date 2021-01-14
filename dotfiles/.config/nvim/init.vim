" General Settings
filetype plugin on
syntax on
set nocompatible
set number
set ignorecase
set smartcase
set scrolloff=4
set cursorline
set autoindent
set softtabstop=0 expandtab
set tabstop=2
set shiftwidth=2

" Update Gitgutter at ms seconds
set updatetime=100

" Toggle between relative and non-relative number on insert/normal mode
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Remove trailing white spaces after write
autocmd BufWritePre * %s/\s\+$//e

" Key mappings
nnoremap <C-p> :FZF<CR>
nnoremap <C-E> :NERDTreeToggle<CR>
nnoremap <F3> :CocCommand prettier.formatFile<CR>
nnoremap <F1> :TagbarToggle<CR>

" Variables to change symbols for nerdtree git plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" vim-javascript variables
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:tagalong_verbose = 1
let g:NERDTreeShowHidden = 1
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
let g:html_indent_inctags = "html,body,head"

" Plugins
call plug#begin()
" Add this command to .zshrc:
" export FZF_DEFAULT_COMMAND='fd --ignore-file=.gitignore'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" File explorer
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'xuyuanp/nerdtree-git-plugin'
" Enhanced directory browser
Plug 'tpope/vim-vinegar'
" Shows git diff in the sign column
Plug 'airblade/vim-gitgutter'
" Greps text to all files - needs Ack package installed in the system
Plug 'dyng/ctrlsf.vim'
" Provides automatic closing of parenthesis, quotes, brackets, etc.
Plug 'raimondi/delimitmate'
" Comments by using 'gcc' or 'gc
Plug 'tpope/vim-commentary'
" Allow tab to insert completion needs, do:
" :help supertab - to check the configurations
Plug 'ervandew/supertab'
" Allows writing to a readonly file - :w suda://%
" Prevent putting in or cancelling when asked to input password:
" This may cause you to not be able to enter your password for awhile
Plug 'lambdalisue/suda.vim'
" Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-html', 'coc-css', 'coc-json', 'coc-prettier', 'coc-tabnine', 'coc-java']
" Typescript syntax highlighting
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
" Javascipt syntax highlighting
Plug 'pangloss/vim-javascript'
" Theme
Plug 'danilo-augusto/vim-afterglow'
" Statusline
Plug 'itchyny/lightline.vim'
" Show color on css files
Plug 'ap/vim-css-color'
" Shows indent guide
Plug 'yggdroot/indentline'
" React JSX syntax highlighting - highlighting react components
Plug 'maxmellon/vim-jsx-pretty'
" Show character highlights to easily jump left and right with 'f'
Plug 'unblevable/quick-scope'
Plug 'mattn/emmet-vim'
Plug 'majutsushi/tagbar'
call plug#end()

colorscheme afterglow

