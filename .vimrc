set nocompatible
filetype off

" Vundle config
" Set runtime path to include Vundle and initialize
" ------------------------------------------------------------------
set rtp+=/home/markyoon/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'             " Vim plugin manager
Plugin 'scrooloose/nerdtree'              " File tree explorer
Plugin 'scrooloose/syntastic'             " Syntax checking
Plugin 'tpope/vim-fugitive'               " Git in Vim
Plugin 'vim-airline/vim-airline'          " Better Vim status bar
Plugin 'vim-airline/vim-airline-themes'   " Vim Airline themes
Plugin 'airblade/vim-gitgutter'           " Git diff display in the sidebar
Plugin 'Yggdroot/indentLine'              " Show line indent visualization
Plugin 'flazz/vim-colorschemes'           " Include all vim colorschemes
Plugin 'ap/vim-css-color'                 " Display colors in CSS files
Plugin 'altercation/vim-colors-solarized' "Solarized

" Airline settings
let g:airline_theme='bubblegum'         " Set Airline color scheme
let g:airline_powerline_fonts = 1       " Include powerline font

" Call plugins must be defined before the following line
call vundle#end()
filetype plugin indent on

" General settings
" -------------------------------------------------------------------
set wildmenu                            " Fancy tab-completion on files
set ignorecase                          " Case insensitive search
set smartcase                           " Only ignorecase if string doesn't contain capitals
set ruler                               " Displays line and column number
set hls                                 " Highlight all search pattern matches
set number                              " Enable line number
set shiftwidth=2                        " 2 spaces when < or >
syntax on                               " Enable syntax highlighting
filetype on                             " Enable filetype detection
filetype indent on                      " Enable indenting based on filetype
filetype plugin on                      " Enable plugin files for specific file types
set smarttab                            " Tabs for indentation and spaces for alignment
set nowrap                              " Don't wrap text
set backspace=2                         " Backspace deletes through line breaks
set laststatus=2                        " Always display the status bar
set et                                  " Convert tabs to spaces
set autoread                            " Detect external changes
set title                               " Set terminal title
set clipboard+=unnamed                  " Yank and copy to X clipboard
set visualbell                          " Don't ring bell

" Color settings
" -------------------------------------------------------------------
set t_Co=256                            " Enable 256 color
syntax enable                           " Enable syntax coloring
set background=dark                     " Set dark bg
colorscheme solarized                   " Color theme

" In-file Rspec testing
noremap <Leader>t :exe "!RAILS3=true bundle exec zeus rspec " . bufname("%") . ":" . line(".")<cr>
