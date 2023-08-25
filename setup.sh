#!/bin/bash

# Install VIM if not already installed
if ! command -v vim &> /dev/null; then
    echo "VIM is not installed. Installing VIM..."
    sudo apt update
    sudo apt install -y vim
fi

# Install clang-format
echo "Installing clang-format..."
sudo apt update
sudo apt install -y clang-format

# Install Vundle (Plugin Manager for VIM)
if [ ! -d "~/.vim/bundle/Vundle.vim" ]; then
    echo "Installing Vundle..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Create .vimrc file with necessary configurations
cat <<EOL > ~/.vimrc
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'Rip-Rip/clang_complete'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-commentary'
Plugin 'easymotion/vim-easymotion'
Plugin 'jiangmiao/auto-pairs'
Plugin 'rhysd/vim-clang-format'

call vundle#end()
filetype plugin indent on

" CtrlP configuration
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Tab configuration
set tabstop=4
set shiftwidth=4
set expandtab

" NERDTree toggle with Ctrl+n
nnoremap <C-n> :NERDTreeToggle<CR>

" Clang-format configuration
let g:clang_format#style_options = {
    \ "AccessModifierOffset" : -4,
    \ "Standard" : "Cpp11",
    \ "BreakBeforeBraces" : "Stroustrup",
    \ "IndentWidth" : 4,
    \ "TabWidth" : 4,
    \ "UseTab" : "Never"
    \ }
nnoremap <C-K> :<C-U>ClangFormat<CR>

EOL

# Install and update plugins using Vundle
vim +PluginInstall +qall

echo "VIM setup complete with enhanced features, including clang-format for C/C++ auto-formatting. Enjoy your Vim experience!"