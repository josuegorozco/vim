"/
"|--------------------------------------------------------------------------
"| Setup Dein
"|--------------------------------------------------------------------------
"|
"| Dein.vim is a dark powered Vim/Neovim plugin manager.
"| See https://github.com/Shougo/dein.vim
"| for more details.
"|
"/ {{{

so ~/.vim/plugins.vim

"}}}

"/
"|--------------------------------------------------------------------------
"| Encoding
"|--------------------------------------------------------------------------
"|
"| Set to utf-8
"|
"| if set, vim will put a "byte order mark" (or BOM for short) at the start
"| of Unicode files. This option is irrelevant for non-Unicode files (iso-8859, etc.).
"|
"| This BOM is the codepoint U+FEFF, which is represented on disk as follows:
"|
"| UTF-8: EF BB BF
"| UTF-16be: FE FF
"| UTF-16le: FF FE
"| UTF-32be: 00 00 FE FF
"| UTF-32le: FF FE 00 00
"|
"/ {{{

"set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary

"}}}

"/
"|--------------------------------------------------------------------------
"| Backspace
"|--------------------------------------------------------------------------
"|
"| Fix backspace indent
"|
"/ {{{

set backspace=indent,eol,start

"}}}

"/
"|--------------------------------------------------------------------------
"| Tabs
"|--------------------------------------------------------------------------
"|
"| Use real tabs, not spaces.
"|
"/ {{{

set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab

"}}}

"/
"|--------------------------------------------------------------------------
"| Leader
"|--------------------------------------------------------------------------
"|
"| Map leader to comma
"|
"/ {{{

let mapleader=','

"}}}

"/
"|--------------------------------------------------------------------------
"| Map Shift => Colon (:)
"|--------------------------------------------------------------------------
"|
"| Use <;> instead of Shift => :
"|
"/ {{{

nnoremap ; :

"}}}

"/
"|--------------------------------------------------------------------------
"| Hidden buffers
"|--------------------------------------------------------------------------
"|
"| Enable hidden buffers
"|
"/ {{{

set hidden

"}}}

"/
"|--------------------------------------------------------------------------
"| Search
"|--------------------------------------------------------------------------
"|
"| - hlsearch:	 Highlight search matches.
"| - incsearch:  Increment search results.
"| - ignorecase: Case sensitive searches.
"| - smartcase:  Auto case-sensitive searches.
"|
"/ {{{

set hlsearch
set incsearch
set ignorecase
set smartcase
set magic

"}}}

"/
"|--------------------------------------------------------------------------
"| Disable search highlights
"|--------------------------------------------------------------------------
"|
"| Use <,hs> to disable search highlights
"|
"/ {{{

nmap <Leader>hs :nohlsearch<cr>

"}}}

"/
"|--------------------------------------------------------------------------
"| Search Tags
"|--------------------------------------------------------------------------
"|
"| Use <,f> to search ctag files
"|
"/ {{{

nmap <Leader>f :tag<space>

"}}}

"/
"|--------------------------------------------------------------------------
"| Directories for swp files
"|--------------------------------------------------------------------------
"|
"| No backups
"| Don't use swp files.
"|
"/ {{{

set nobackup
set noswapfile

"}}}

"/
"|--------------------------------------------------------------------------
"| File format detection
"|--------------------------------------------------------------------------
"|
"| Set unix, dos, and mac.
"|
"/ {{{

set fileformats=unix,dos,mac

"}}}


"/
"|--------------------------------------------------------------------------
"| Text formatting
"|--------------------------------------------------------------------------
"|
"| Customize line breaks
"| Set text width => unlimited, wrap with linebreaks
"|
"/ {{{

set showbreak=...
set tw=0 wrap linebreak
set list
set listchars=tab:▸\ ,trail:·,extends:>,precedes:<

"}}}

"/
"|--------------------------------------------------------------------------
"| Command history
"|--------------------------------------------------------------------------
"|
"| Show command history
"|
"/ {{{

set showcmd

"}}}

"/
"|--------------------------------------------------------------------------
"| Shell
"|--------------------------------------------------------------------------
"|
"| Set the shell
"|
"/ {{{

set shell=/bin/sh

"}}}

"/
"|--------------------------------------------------------------------------
"| Session management
"|--------------------------------------------------------------------------
"|
"| Set directory
"| Don't auto load
"| Don't auto save
"|
"/ {{{

let g:session_directory = "~/.nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

"}}}

"/
"|--------------------------------------------------------------------------
"| Visual Settings
"|--------------------------------------------------------------------------
"|
"| Enable syntax highlighting
"| Enable ruler
"| Show numbers
"| Highlight matches
"| Enable smart indenting
"| Enable file type indenting
"|
"/ {{{

syntax on
set ruler
set number
set showmatch
set smartindent
filetype indent plugin on

"}}}

"/
"|--------------------------------------------------------------------------
"| System Buffer Menu
"|--------------------------------------------------------------------------
"|
"| Disable the system menu file - includes a "Buffers" menu.
"|
"| See http://vimdoc.sourceforge.net/htmldoc/gui.html#no_buffers_menu
"| for more info.
"|
"/ {{{

let no_buffers_menu = 1

"}}}

"/
"|--------------------------------------------------------------------------
"| Colorscheme
"|--------------------------------------------------------------------------
"|
"| Atom Dark:
"| https://github.com/gosukiwi/vim-atom-dark
"|
"/ {{{

colorscheme atom-dark-256

"}}}

"/
"|--------------------------------------------------------------------------
"| Set mouse model
"|--------------------------------------------------------------------------
"|
"| Sets the model to use for the mouse.  The name mostly specifies what the
"| right mouse button is used for.
"|
"| See http://vimdoc.sourceforge.net/htmldoc/options.html#'mousemodel'
"| for more info.
"|
"/ {{{

set mousemodel=popup

"}}}

"/
"|--------------------------------------------------------------------------
"| Color support
"|--------------------------------------------------------------------------
"|
"| Ensforce 256 color support
"|
"/ {{{

set t_Co=256

"}}}

"/
"|--------------------------------------------------------------------------
"| Cursor line
"|--------------------------------------------------------------------------
"|
"| Highlight the screen line of the cursor with CursorLine |hl-CursorLine|.
"| Can make the screen redrawing slow.
"|
"| http://vimdoc.sourceforge.net/htmldoc/options.html#'cursorline'
"|
"/ {{{

set nocursorline

"}}}

"/
"|--------------------------------------------------------------------------
"| GUI Options
"|--------------------------------------------------------------------------
"|
"| e - Add tab pages when indicated
"| g - Make menu items that are not active grey.
"| m - Menu bar is present
"| r - Right-hand scrollbar is always present.
"| t - Include tearoff menu items.	Currently only works for Win32, GTK+,
"|	   and Motif 1.2 GUI.
"| i - Use a Vim icon. For GTK with KDE it is used in the left-upper corner
"|	   of the window.  It's black&white on non-GTK, because of limitations
"|	   of X11.	For a color icon, see |X11-icon|
"|
"| See http://vimdoc.sourceforge.net/htmldoc/options.html#'guioptions'
"| for more info.
"|
"/ {{{

set guioptions=egmrti
set background=dark

"}}} 

"/
"|--------------------------------------------------------------------------
"| GUI Fonts
"|--------------------------------------------------------------------------
"|
"| http://vimdoc.sourceforge.net/htmldoc/options.html#'gfn'
"|
"/ {{{

set gfn=Fira_Code\ 12

"}}}

"/
"|--------------------------------------------------------------------------
"| GUI Scrollbars
"|--------------------------------------------------------------------------
"|
"| Disable scrollbars
"|
"/ {{{

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=e

"}}}

"/
"|--------------------------------------------------------------------------
"| GUI Colors
"|--------------------------------------------------------------------------
"|
"| Nvim settings
"|
"/ {{{

let $NVIM_TUI_ENABLE_TRUE_COLORS=1
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

"}}}

"/
"|--------------------------------------------------------------------------
"| Highlights:
"|--------------------------------------------------------------------------
"|
"| Change line number colors
"| Change split window colors
"| Tab pages ...
"|
"/ {{{

hi LineNr ctermfg=8 ctermbg=bg
hi vertsplit ctermfg=bg
hi TabLine ctermfg=bg ctermbg=bg
hi TabLineFill ctermfg=bg ctermbg=bg
hi TabLineSel ctermfg=bg ctermbg=bg
hi Title ctermfg=bg ctermbg=bg
hi Search ctermfg=lightgray ctermbg='NONE'
hi StatusLine ctermfg=darkgray ctermbg=black

"}}}

"/
"|--------------------------------------------------------------------------
"| Terminal Detection
"|--------------------------------------------------------------------------
"|
"| Set color support and fonts based on terminal.
"|
"/ {{{

if has("gui_running")
	if has("gui_mac") || has("gui_macvim")
		set guifont=Fira_Code:h12
		set transparency=7
	endif
else
	let g:CSApprox_loaded = 1

	if $COLORTERM == 'gnome-terminal'
		set term=gnome-256color
	else
		if $TERM == 'xterm'
			set term=xterm-256color
		endif
	endif
endif

if &term =~ '256color'
	set t_ut=
endif

"}}}

"/
"|--------------------------------------------------------------------------
"| Blinking cursor
"|--------------------------------------------------------------------------
"|
"| Disable it
"|
"/ {{{

set gcr=a:blinkon0
set scrolloff=3

"}}}

"/
"|--------------------------------------------------------------------------
"| Status Bar
"|--------------------------------------------------------------------------
"|
"| Always show the status bar
"| http://vimdoc.sourceforge.net/htmldoc/options.html#'laststatus'
"|
"/ {{{

set laststatus=2

"}}}

"/
"|--------------------------------------------------------------------------
"| Modelines
"|--------------------------------------------------------------------------
"|
"| Set overrides.
"|
"| See http://vimdoc.sourceforge.net/htmldoc/options.html#modeline
"| for more info.
"|
"/ {{{

set modeline
set modelines=10

"}}}

"/
"|--------------------------------------------------------------------------
"| Terminal Title
"|--------------------------------------------------------------------------
"|
"| Disable the title.
"| 
"| See http://vimdoc.sourceforge.net/htmldoc/options.html#'title'
"| for more info.
"|
"/ {{{

set title
set titleold="Terminal"
set titlestring=%F

"}}}

"/
"|--------------------------------------------------------------------------
"| EditorConfig
"|--------------------------------------------------------------------------
"|
"| Custom config
"|
"/ {{{

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

"}}}

"/
"|--------------------------------------------------------------------------
"| Status Line
"|--------------------------------------------------------------------------
"|
"| Init the status line
"|
"| See http://vimdoc.sourceforge.net/htmldoc/options.html#'statusline'
"| for more info.
"|
"/ {{{

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

"}}}

"/
"|--------------------------------------------------------------------------
"| Fugitive
"|--------------------------------------------------------------------------
"|
"| Enhannce the statusline with git
"|
"/ {{{

if exists("*fugitive#statusline")
	set statusline+=%{fugitive#statusline()}
endif

"}}}

"/
"|--------------------------------------------------------------------------
"| Abbreviations
"|--------------------------------------------------------------------------
"|
"| No one is really happy until you have this shortcuts.
"|
"/ {{{

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"}}}

"/
"|--------------------------------------------------------------------------
"| NERDTree
"|--------------------------------------------------------------------------
"|
"| Custom settings.
"|
"/ {{{

let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 20
let NERDTreeHijackNetrw = 0
let NERDTreeShowHidden=1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
noremap <F3> :NERDTreeToggle<CR>
nmap <Leader><space> :NERDTreeToggle<cr>

"}}}

"/
"|--------------------------------------------------------------------------
"| grep.vim
"|--------------------------------------------------------------------------
"|
"| Integrates the grep, fgrep, egrep, and agrep tools with Vim and allows
"| you to search for a pattern in one or more files and jump to them. 
"|
"| See http://www.vim.org/scripts/script.php?script_id=311
"| for more info.
"|
"/ {{{

nnoremap <silent> <leader>f :Rgrep<CR>
let Grep_Default_Options = '-IR'

"}}} 

"/
"|--------------------------------------------------------------------------
"| vimshell.vim
"|--------------------------------------------------------------------------
"|
"| An extreme shell that doesn't depend on external shells but is written
"| completely in pure Vim script.
"|
"| See https://github.com/Shougo/vimshell.vim
"| for more info.
"|
"/ {{{

let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_prompt =  '$ '

"}}}

"/
"|--------------------------------------------------------------------------
"| Terminal Emulation
"|--------------------------------------------------------------------------
"|
"| Determine which shell to use
"|
"/ {{{

if g:vim_bootstrap_editor == 'nvim'
  nnoremap <silent> <leader>sh :terminal<CR>
else
  nnoremap <silent> <leader>sh :VimShellCreate<CR>
endif

"}}}

"/
"|--------------------------------------------------------------------------
"| Functions:
"|--------------------------------------------------------------------------
"|
"| Automatically source vimrc
"|
"/ {{{

augroup autosourcing
	autocmd!
	autocmd BufWritePost ~/.vimrc source %
augroup END

augroup autosourcing
	autocmd!
	autocmd BufWritePost ~/.vim/init.vim source %
augroup END

"}}}

"/
"|--------------------------------------------------------------------------
"| Trailing Spaces
"|--------------------------------------------------------------------------
"|
"| Don't show trailing spaces in insert mode
"|
"/ {{{

augroup trailing
  au!
  au InsertEnter * :set listchars-=trail:·
  au InsertLeave * :set listchars+=trail:·
augroup END

"}}}

"/
"|--------------------------------------------------------------------------
"| Functions:
"|--------------------------------------------------------------------------
"|
"| wrap - http://vimdoc.sourceforge.net/htmldoc/options.html#'wrap'
"|
"/ {{{

if !exists('*s:setupWrapping')
	function s:setupWrapping()
		set wrap
		set wm=2
		set textwidth=99
	endfunction
endif

"}}}

"/
"|--------------------------------------------------------------------------
"| Functions:
"|--------------------------------------------------------------------------
"|
"| Use <,j> to fix files.
"| Autofix javascript files based on jscs
"|
"| NOTE: As jscs has merged with eslint, we can retire JscsFix.
"|
"/ {{{

" function! JscsFix()
" 	let l:winview = winsaveview()
" 	% ! jscs -x
" 	call winrestview(l:winview)
" endfunction
" command! JscsFix :call JscsFix()
" noremap <leader>j :JscsFix<CR>

function! ESLintFix()
    let g:eslintfix_tmp_file = fnameescape(tempname().".js")
	let l:winview = winsaveview()
    let content = getline("1", "$")
    call writefile(content, g:eslintfix_tmp_file)
    call system("eslint --config ${ESLINTRC} --fix " . g:eslintfix_tmp_file)
    let result = readfile(g:eslintfix_tmp_file)
    silent exec "1,$j"
    call setline("1", result[0])
    call append("1", result[1:])
	call winrestview(l:winview)
endfunction
command! ESLintFix :call ESLintFix()
noremap <leader>j :ESLintFix<CR>

"}}}

"/
"|--------------------------------------------------------------------------
"| Functions:
"|--------------------------------------------------------------------------
"|
"| MyFoldText()
"| Custom fold support
"|
"/ {{{

function! MyFoldText()
	let line = getline(v:foldstart)

	let nucolwidth = &fdc + &number * &numberwidth
	let windowwidth = winwidth(0) - nucolwidth - 3
	let foldedlinecount = v:foldend - v:foldstart

	" expand tabs into spaces
	let onetab = strpart('			', 0, &tabstop)
	let line = substitute(line, '\t', onetab, 'g')

	let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
	let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
	return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
endfunction

"}}}

"/
"|--------------------------------------------------------------------------
"| Functions:
"|--------------------------------------------------------------------------
"|
"| Custom javascript fold
"|
"/ {{{

function! JavaScriptFold()
	" syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend
	setlocal foldmethod=syntax
	setlocal foldlevel=1
	syn region foldBraces start=/{/ skip=/\(\/\/.*\)\|\(\/.*\/\)/ end=/}/ transparent fold keepend extend
endfunction

set foldtext=MyFoldText()

autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

autocmd FileType vim setlocal fdc=1
set foldlevel=0

autocmd FileType vim setlocal foldmethod=marker
autocmd FileType vim setlocal foldlevel=0

autocmd FileType html setlocal fdl=99
autocmd FileType javascript,html,css,scss,typescript,php setlocal foldlevel=0
autocmd FileType javascript,typescript,css,scss,json,php setlocal foldmethod=marker
autocmd FileType javascript,typescript,css,scss,json,php setlocal foldmarker={,}

" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za
nnoremap <leader>{ zM
nnoremap <leader>} zR

"}}}

"/
"|--------------------------------------------------------------------------
"| Functions:
"|--------------------------------------------------------------------------
"|
"| Convert spaces
"|
"/ {{{

" Return indent (all whitespace at start of a line), converted from
" tabs to spaces if what = 1, or from spaces to tabs otherwise.
" When converting to tabs, result has no redundant spaces.
function! Indenting(indent, what, cols)
  let spccol = repeat(' ', a:cols)
  let result = substitute(a:indent, spccol, '\t', 'g')
  let result = substitute(result, ' \+\ze\t', '', 'g')
  if a:what == 1
    let result = substitute(result, '\t', spccol, 'g')
  endif
  return result
endfunction

" Convert whitespace used for indenting (before first non-whitespace).
" what = 0 (convert spaces to tabs), or 1 (convert tabs to spaces).
" cols = string with number of columns per tab, or empty to use 'tabstop'.
" The cursor position is restored, but the cursor will be in a different
" column when the number of characters in the indent of the line is changed.
function! IndentConvert(line1, line2, what, cols)
  let savepos = getpos('.')
  let cols = empty(a:cols) ? &tabstop : a:cols
  execute a:line1 . ',' . a:line2 . 's/^\s\+/\=Indenting(submatch(0), a:what, cols)/e'
  call histdel('search', -1)
  call setpos('.', savepos)
endfunction
command! -nargs=? -range=% Space2Tab call IndentConvert(<line1>,<line2>,0,<q-args>)
command! -nargs=? -range=% Tab2Space call IndentConvert(<line1>,<line2>,1,<q-args>)
command! -nargs=? -range=% RetabIndent call IndentConvert(<line1>,<line2>,&et,<q-args>)

""}}}

"/
"|--------------------------------------------------------------------------
"| Auto command:
"|--------------------------------------------------------------------------
"|
"| Change current working directory (cwd) based on current file in buffer.
"|
"/ {{{

autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)

"}}}

"/
"|--------------------------------------------------------------------------
"| Auto command:
"|--------------------------------------------------------------------------
"|
"| Do syntax highlight syncing from the start
"|
"/ {{{

augroup vimrc-sync-fromstart
	autocmd!
	autocmd BufEnter * :syntax sync fromstart
augroup END

"}}}

"/
"|--------------------------------------------------------------------------
"| Auto command:
"|--------------------------------------------------------------------------
"|
"| Remember cursor position
"|
"/ {{{

augroup vimrc-remember-cursor-position
	autocmd!
	autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"}}}

"/
"|--------------------------------------------------------------------------
"| Auto command:
"|--------------------------------------------------------------------------
"|
"| Auto wrap when working with text files.
"|
"/ {{{

augroup vimrc-wrapping
	autocmd!
	autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END

"}}}

"/
"|--------------------------------------------------------------------------
"| Auto command:
"|--------------------------------------------------------------------------
"|
"| make/cmake
"|
"/ {{{

augroup vimrc-make-cmake
	autocmd!
	autocmd FileType make setlocal noexpandtab
	autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
augroup END

"}}}

"/
"|--------------------------------------------------------------------------
"| Functions:
"|--------------------------------------------------------------------------
"|
"| Image placeholder
"|
"/ {{{

function! s:PlaceholderImgTag(size)
	let url = 'http://dummyimage.com/' . a:size . '/000000/555555'
	let [width,height] = split(a:size, 'x')
	execute "normal a<img src=\"".url."\" width=\"".width."\" height=\"".height."\" />"
endfunction
command! -nargs=1 PlaceholderImgTag call s:PlaceholderImgTag(<f-args>)
nmap <Leader>img :PlaceholderImgTag<cr>
"}}}

"/
"|--------------------------------------------------------------------------
"| Autoread
"|--------------------------------------------------------------------------
"|
"| When a file has been detected to have been changed outside of Vim and it
"| has not been changed inside of Vim, automatically read it again.
"|
"| See http://vimdoc.sourceforge.net/htmldoc/options.html#'autoread'
"| for more info.
"|
"/ {{{

set autoread

"}}}

"/
"|--------------------------------------------------------------------------
"| Window split management
"|--------------------------------------------------------------------------
"|
"| Make splits default to below, and to the right.
"|
"/ {{{

set splitbelow
set splitright

"}}}

"/
"|--------------------------------------------------------------------------
"| Mappings:
"|--------------------------------------------------------------------------
"|
"| Use <,ev> to edit vimrc
"|
"/ {{{

nmap <Leader>ev :tabedit $MYVIMRC<cr>

"}}}

"/
"|--------------------------------------------------------------------------
"| Mappings:
"|--------------------------------------------------------------------------
"|
"| Use <,t> to retab and entire file
"|
"/ {{{

nmap <Leader>t :Space2Tab<cr>

"}}}

"/
"|--------------------------------------------------------------------------
"| Mappings:
"|--------------------------------------------------------------------------
"|
"| Use <,h> to split horizontally
"| Use <,v> to split vertically
"|
"/ {{{

noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"}}}

"/
"|--------------------------------------------------------------------------
"| Mappings:
"|--------------------------------------------------------------------------
"|
"| Make it easier to switch between splits
"|
"/ {{{

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"}}}

"/
"|--------------------------------------------------------------------------
"| Mappings:
"|--------------------------------------------------------------------------
"|
"| Git
"|
"/ {{{

noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

"}}}

"/
"|--------------------------------------------------------------------------
"| Mappings:
"|--------------------------------------------------------------------------
"|
"| Session management
"|
"/ {{{

nnoremap <leader>so :OpenSession
nnoremap <leader>ss :SaveSession
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>

"}}}

"/
"|--------------------------------------------------------------------------
"| Mappings:
"|--------------------------------------------------------------------------
"|
"| Tabs
"|
"/ {{{

nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"}}}

"/
"|--------------------------------------------------------------------------
"| Mappings:
"|--------------------------------------------------------------------------
"|
"| Set the current directory
"|
"/ {{{

nnoremap <leader>. :lcd %:p:h<CR>

"}}}

"/
"|--------------------------------------------------------------------------
"| Mappings
"|--------------------------------------------------------------------------
"|
"| Opens an edit command with the path of the currently edited file filled in
"|
"/ {{{

noremap <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"}}}

"/
"|--------------------------------------------------------------------------
"| Mappings:
"|--------------------------------------------------------------------------
"|
"| Opens a tab edit command with the path of the currently edited file filled
"|
"/ {{{

noremap <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

"}}}

"/
"|--------------------------------------------------------------------------
"| Lightline
"|--------------------------------------------------------------------------
"|
"| Source custom settings
"|
"/ {{{

so ~/.vim/lightline-plugin.vim

"}}}

"/
"|--------------------------------------------------------------------------
"| ctrlp.vim
"|--------------------------------------------------------------------------
"|
"| Custom config setttings.
"|
"/ {{{

set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__,*/tmp/*,*.so,*.swp,*.zip,*/node_modules,*/vendor,*/storage
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|tox)$'
let g:ctrlp_user_command = "find %s -type f | grep -Ev '"+ g:ctrlp_custom_ignore +"'"
let g:ctrlp_use_caching = 0
let g:ctrlp_working_path_mode = 'rwa'
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:30,results:30'
cnoremap <C-P> <C-R>=expand("%:p:h") . "/" <CR>
noremap <leader>b :CtrlPBuffer<CR>
let g:ctrlp_map = '<leader>1'
let g:ctrlp_open_new_file = 'r'

"}}}

"/
"|--------------------------------------------------------------------------
"| MatchTags
"|--------------------------------------------------------------------------
"|
"| Aways match tags.
"| Disabled for now on html files. Makes nvim slow :(
"|
"/ {{{

let g:mta_filetypes = {
    \ 'html' : 0,
    \ 'xhtml' : 0,
    \ 'xml' : 1
    \}

"}}}

"/
"|--------------------------------------------------------------------------
"| Vim GitGutter
"|--------------------------------------------------------------------------
"|
"| A Vim plugin which shows a git diff in the 'gutter' (sign column). It shows
"| whether each line has been added, modified, and where lines have been
"| removed. You can also stage and undo individual hunks.
"|
"/ {{{

let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_max_signs = 1000											"default value
hi SignColumn ctermfg=bg ctermbg=bg

"}}}

"/
"|--------------------------------------------------------------------------
"| Indentline
"|--------------------------------------------------------------------------
"|
"| https://github.com/Yggdroot/indentLine
"|
"/ {{{

let g:indentLine_char='│'

"}}}

"/
"|--------------------------------------------------------------------------
"| Neocomplete
"|--------------------------------------------------------------------------
"|
"| Enable at startup
"|
"/ {{{

let g:deoplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

"" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"}}}

"/
"|--------------------------------------------------------------------------
"| Comments
"|--------------------------------------------------------------------------
"|
"| Use <,c> in visual mode to toggle comments.
"| Toggle comments
"|
"/ {{{

vnoremap <Leader>c :TComment<cr>

"}}}

"/
"|--------------------------------------------------------------------------
"| Snippets
"|--------------------------------------------------------------------------
"|
"| Custom config and enable snipmate compatibility features.
"|
"/ {{{

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/snippets'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsEditSplit="vertical"

let g:snips_author='Josue Orozco'
let g:snips_email='jorozco@surgeforward.com'

"}}}

"/
"|--------------------------------------------------------------------------
"| PHP Doc
"|--------------------------------------------------------------------------
"|
"| Generates PHP dockblock
"|
"/ {{{

let g:pdv_template_dir = $HOME . '/.vim/pdv/templates_snip'
autocm FileType php map <buffer> <leader>d :call pdv#DocumentWithSnip()<CR>

"}}}

"/
"|--------------------------------------------------------------------------
"| Syntastic
"|--------------------------------------------------------------------------
"|
"| Custom config
"|
"/ {{{

let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1

"}}}

"/
"|--------------------------------------------------------------------------
"| Linting
"|--------------------------------------------------------------------------
"|
"| custom config
"|
"/ {{{

let g:neomake_open_list = 2
let g:neomake_list_height = 5
let g:neomake_airline = 0
let g:neomake_verbose = 0 " 3 for debugging

autocmd BufReadPost * Neomake
autocmd! BufWritePost * Neomake

let g:neomake_html_enabled_makers = []
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe = system('PATH=$(npm bin):$PATH && which eslint | tr -d "\n"')
let g:neomake_javascript_eslint_maker = {
	\ 'args': ['--no-color', '--config', 'ESLINTRC', '--format', 'compact'],
	\ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
	\ '%W%f: line %l\, col %c\, Warning - %m'
	\ }

let g:neomake_scss_enabled_markers = ['stylelint']
let g:neomake_scss_stylelint_exe = system('PATH=$(npm bin):$PATH && which stylelint | tr -d "\n"')
let g:neomake_scss_stylelint_maker = {
	\ 'args': ['--no-color', '--syntax', 'scss', '--format', 'compact'],
	\ 'errorformat': '%+P%f,' .
	\ '%*\s%l:%c  %t  %m,' .
	\ '%-Q'
	\ }

"'args': ['--no-color', '--format', 'compact', '--config', '/Users/josue/.eslintrc.js']
"}}}

"/
"|--------------------------------------------------------------------------
"| JSDoc
"|--------------------------------------------------------------------------
"|
"| Search for the last function declaration and put jsdoc above it.
"| See https://github.com/heavenshell/vim-jsdoc
"|
"/ {{{

nmap <silent> <C-l> ?function<cr>:noh<cr><Plug>(jsdoc)
nmap <Leader>d :noh<cr><Plug>(jsdoc)

"}}}

"/
"|--------------------------------------------------------------------------
"| Javascript Libraries
"|--------------------------------------------------------------------------
"|
"| Syntax support for js libs.
"|
"| See https://github.com/othree/javascript-libraries-syntax.vim
"| for more info.
"|
"/ {{{

let g:used_javascript_libs = 'jquery,underscore,requirejs,jasmine,chai,react,flux'

"}}}

"/
"|--------------------------------------------------------------------------
"| Omni complete
"|--------------------------------------------------------------------------
"|
"| Typescript & Javscript omni complete
"|
"/ {{{

let g:vimjs#casesensistive = 1
let g:vimjs#smartcomplete = 1
let g:tsuquyomi_disable_quickfix = 1
let g:vim_json_syntax_conceal = 0
autocmd FileType setlocal completeopt+=noselect,menu,preview
set completeopt+=noselect,menu,preview

"}}}

"/
"|--------------------------------------------------------------------------
"| Mappings:
"|--------------------------------------------------------------------------
"|
"| Josue's custom mappings.
"|
"/ {{{

inoremap '..'   '..'<Left><Left>
inoremap <div   <div></div><Left><Left><Left><Left><Left><Left>
inoremap <p>    <p></p><Left><Left><Left><Left><CR><Esc>O
inoremap <dl   <dl></dl><Left><Left><Left><Left><Left><CR><Esc>O
inoremap <dt   <dt></dt><Left><Left><Left><Left><Left><CR><Esc>O
inoremap <dd   <dd></dd><Left><Left><Left><Left><Left><CR><Esc>O
inoremap <ul   <ul></ul><Left><Left><Left><Left><Left><CR><Esc>O
inoremap <ol   <ol></ol><Left><Left><Left><Left><Left><CR><Esc>O
inoremap <li   <li></li><Left><Left><Left><Left><Left>
inoremap <!---//   <!---// //--><Left><Left><Left><Left><Left>
inoremap <?=   <?=;?><Left><Left><Left>
inoremap <img   <img src="" /><Left><Left><Left><Left>
inoremap <a>   <a href=""></a><Left><Left><Left><Left><Left><Left>
inoremap <h1   <h1></h1><Left><Left><Left><Left><Left>
inoremap <h2   <h2></h2><Left><Left><Left><Left><Left>
inoremap <h3   <h3></h3><Left><Left><Left><Left><Left>
inoremap <h4   <h4></h4><Left><Left><Left><Left><Left>
inoremap <h5   <h5></h5><Left><Left><Left><Left><Left>
inoremap <h6   <h6></h6><Left><Left><Left><Left><Left>
inoremap <table   <table></table><Left><Left><Left><Left><Left><Left><Left><Left>
inoremap <th   <th></th><Left><Left><Left><Left><Left>
inoremap <td   <td></td><Left><Left><Left><Left><Left>
inoremap <tr   <tr></tr><Left><Left><Left><Left><Left>
inoremap <strong   <strong></strong><Left><Left><Left><Left><Left><Left><Left><Left><Left>
inoremap <htm   <html></html><Left><Left><Left><Left><Left><Left><Left>
inoremap <title   <title></title><Left><Left><Left><Left><Left><Left><Left><Left>
inoremap <head   <head></head><Left><Left><Left><Left><Left><Left><Left>
inoremap <style   <style type="text/css"></style><Left><Left><Left><Left><Left><Left><Left><Left>
inoremap <script   <script type="text/javascript"></script><Left><Left><Left><Left><Left><Left><Left><Left><Left>
inoremap <body   <body></body><Left><Left><Left><Left><Left><Left><Left>
inoremap id=   id=""<Left>
inoremap name=   name=""<Left>
inoremap width=   width=""<Left>
inoremap height=   height=""<Left>
inoremap alt=   alt=""<Left>
inoremap align=   align=""<Left>
inoremap style=   style=""<Left>
inoremap class=   class=""<Left>
inoremap className=   className=""<Left>
inoremap value=   value=""<Left>
inoremap src=   src=""<Left>
inoremap border=   border=""<Left>
inoremap title=   title=""<Left>
inoremap vspace=   vspace=""<Left>
inoremap hspace=   hspace=""<Left>
inoremap target=   target=""<Left>
inoremap onclick=   onclick=""<Left>
inoremap colspan=   colspan=""<Left>
inoremap cellpadding=   cellpadding=""<Left>
inoremap cellspacing=   cellspacing=""<Left>
inoremap data-bind   data-bind=""<Left>
inoremap <tbody <tbody></tbody><Left><Left><Left><Left><Left><Left><Left><Left>
inoremap <u>   <u></u><Left><Left><Left><Left>
inoremap <i>   <i></i><Left><Left><Left><Left>

"}}}

"/
"|--------------------------------------------------------------------------
"| Mappings:
"|--------------------------------------------------------------------------
"|
"| Copy/paste
"|
"/ {{{

if has('unnamedplus')
	set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap P "+gP<CR>
noremap XX "+x<CR>

if has('macunix')
	" pbcopy for OSX copy/paste
	vmap <C-x> :!pbcopy<CR>
	vmap <C-c> :w !pbcopy<CR><CR>
endif

"}}}

"/
"|--------------------------------------------------------------------------
"| Mappings:
"|--------------------------------------------------------------------------
"|
"| Buffer navigation
"|
"/ {{{

noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

"}}}

"/
"|--------------------------------------------------------------------------
"| Mappings:
"|--------------------------------------------------------------------------
"|
"| Close current buffer
"|
"/ {{{

noremap <leader>xx :bd<CR>

"}}}

"/
"|--------------------------------------------------------------------------
"| Mappings:
"|--------------------------------------------------------------------------
"|
"| Clean search (highlight)
"|
"/ {{{

nnoremap <silent> <leader><space> :noh<cr>

"}}}

"/
"|--------------------------------------------------------------------------
"| Mappings:
"|--------------------------------------------------------------------------
"|
"| Open current line on GitHub
"|
"/ {{{

noremap ,o :!echo `git url`/blob/`git rev-parse --abbrev-ref HEAD`/%\#L<C-R>=line('.')<CR> \| xargs open<CR><CR>

"}}}

"/
"|--------------------------------------------------------------------------
"| Custom
"|--------------------------------------------------------------------------
"|
"| Support dom, html, css in javascript files.
"|
"/ {{{

let g:javascript_enable_domhtmlcss = 1

" Enable 'safe write'.
" See http://webpack.github.io/docs/webpack-dev-server.html#working-with-editors-ides-supporting-safe-write
" for more info.
set backupcopy=yes

"}}}

"/
"|--------------------------------------------------------------------------
"| JSX Syntax
"|--------------------------------------------------------------------------
"|
"| Allow JSX syntax highlighting and indenting in js files.
"|
"/ {{{

let g:jsx_ext_required = 0

"}}}

"/
"|--------------------------------------------------------------------------
"| ~/.nvimrc.local
"|--------------------------------------------------------------------------
"|
"| Include user's local vim config.
"|
"/ {{{

if filereadable(expand("~/.nvimrc.local"))
	source ~/.nvimrc.local
endif

"}}}
