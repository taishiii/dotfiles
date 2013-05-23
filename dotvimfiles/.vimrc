set number
syntax on
set autoindent
set tabstop=4
set backspace=start,eol,indent
"set laststatus=2
set statusline=%f%=%8l:%8L

set nocompatible
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()

Bundle 'Shougo/neocomplcache'

Bundle 'petdance/vim-perl'

Bundle 'hotchpotch/perldoc-vim'

Bundle 'Shougo/neosnippet'

filetype plugin indent on

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion
let	g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keywordlength.
let g:neocomplcache_min_syntax_length  = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'


" Define dictionary.
 let g:neocomplcache_dictionary_filetype_lists = {
     \ 'default' : '',
     \ 'vimshell' : $HOME.'/.vimshell_hist',
     \ 'scheme' : $HOME.'/.gosh_completions',
 	 \ 'perl'	: $HOME . '/.vim/dict/perl.dict'
                 \ }
 " Define keyword.
 if !exists('g:neocomplcache_keyword_patterns')
 	let g:neocomplcache_keyword_patterns = {}
 	endif
 	let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

"for snippets
imap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-n>"
smap <C-k> <Plug>(neocomplcache_snippets_expand)


