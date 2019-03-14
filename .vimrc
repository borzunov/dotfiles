" Syntax highlighting
syn on

" Set automatic indenation to tabs with four-spaces width
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=0
set tabstop=4

" Set lines' numeration
set number

autocmd FileType cpp map <F9> :w\|!g++ -Wall -Wextra -Wshadow -Wno-unknown-pragmas -Wno-unused-result -std=c++11 -DLOCAL -O2 "%" -o "%:r" <CR>
autocmd FileType cpp map <F8> :w\|!g++ -Wall -Wextra -Wshadow -Wno-unknown-pragmas -Wno-unused-result -std=c++11 -DLOCAL -g "%" -o "%:r" <CR>
autocmd FileType cpp map <F5> :!time ./"%:r" <CR>

autocmd FileType python map <F5> :w\|!time python3 "%" <CR>

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
