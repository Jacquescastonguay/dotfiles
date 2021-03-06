color desert

syntax on
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set backspace=2 " make backspace work like most other apps
autocmd BufWritePre * %s/\s\+$//e " delete trailing whitespace at ends of lines

execute pathogen#infect()

au BufNewFile,BufRead * if &syntax == '' | set paste | endif

autocmd BufRead,BufNewFile *.log :AnsiEsc
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars
au BufRead,BufNewFile *.coffee set ft=js syntax=coffee
au FilterWritePre * if &diff | set wrap | endif


if &diff
  colorscheme autumn
endif


