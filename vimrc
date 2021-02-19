set nocompatible              " required filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'frazrepo/vim-rainbow'
Plugin 'codota/tabnine-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'vim-python/python-syntax'
Plugin 'ternjs/tern_for_vim', { 'do' : 'npm install' } 
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required
colorscheme molokai
highlight Comment cterm=bold
set number
set tabstop=4 expandtab shiftwidth=4 smarttab
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
set laststatus=2
set noshowmode
let g:python_highlight_all = 1
set directory=/tmp
set nobackup
set noswapfile
set splitbelow
set splitright
autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp
autocmd FileType cpp nnoremap     <leader>rm    :!g++ -g --std=c++11 % -o %:r<CR>
autocmd FileType cpp nnoremap     <leader>rr    :!./%:r<CR>
autocmd FileType cpp nnoremap     <leader>rt    :!for f in *.test; do echo "\nTEST: $f"; ./%:r < $f; done<CR>
autocmd FileType python nnoremap     <leader>rr    :!python %:r.py<CR>
autocmd FileType python nnoremap     <leader>rt    :!for f in *.test; do echo "\nTEST: $f"; python %:r.py < $f; done<CR>
map <F8> :NERDTreeToggle<CR>
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
