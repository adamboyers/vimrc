" tab and indenting options
set autoindent expandtab smarttab shiftwidth=4 softtabstop=4 tabstop=4

" visible hard-tabs, trailing spaces
set list listchars=tab:>-,trail:~,extends:>,precedes:<

" ignore whitespace-only changes in diff mode
set diffopt+=iwhite

" search options
set nohlsearch incsearch ignorecase smartcase

" fold options
set foldmethod=indent nofoldenable

" status line always on
set laststatus=2

" 256 color
set t_Co=256
color zenburn

" correct keyboard in tmux (still doesn't work quite right...)
if &term == "screen"
    set t_kb=
    set t_kD=[3~
endif

" thanks jwheeler!
iab udd use Data::Dumper 'Dumper';<CR>$Data::Dumper::Indent = 1;<CR>$Data::Dumper::Maxdepth = 2;<CR>warn Dumper ;<ESC>i

" K = perldoc -f
au FileType perl setlocal keywordprg=perldoc\ -T\ -f

