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

if (!isdirectory(expand("$HOME/.vim/repos/github.com/Shougo/dein.vim")))
	call system(expand("mkdir -p $HOME/.vim/repos/github.com"))
	call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.vim/repos/github.com/Shougo/dein.vim"))

	"/
	"|--------------------------------------------------------------------------
	"| Run shell scripts if exist on custom select language
	"|--------------------------------------------------------------------------
	"|
	"| Current, languages are:
	"| 
	"| - Javascript
	"| - PHP
	"| - HTML
	"|
	"/

	silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/tpope/vim-fugitive/tpope/vim-fugitive.sh | bash -s stable
	silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/scrooloose/nerdtree/scrooloose/nerdtree.sh | bash -s stable
	silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/pangloss/vim-javascript/pangloss/vim-javascript.sh | bash -s stable
	silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/ervandew/supertab/ervandew/supertab.sh | bash -s stable
	silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/godlygeek/tabular/godlygeek/tabular.sh | bash -s stable
	silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/tpope/vim-repeat/tpope/vim-repeat.sh | bash -s stable
	silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/airblade/vim-gitgutter/airblade/vim-gitgutter.sh | bash -s stable
	silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/vim-ruby/vim-ruby/vim-ruby/vim-ruby.sh | bash -s stable
	silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/mattn/emmet-vim/mattn/emmet-vim.sh | bash -s stable
	silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/MarcWeber/vim-addon-mw-utils/MarcWeber/vim-addon-mw-utils.sh | bash -s stable
	silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/tpope/vim-haml/tpope/vim-haml.sh | bash -s stable
	silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/Shougo/neosnippet.vim/Shougo/neosnippet.vim.sh | bash -s stable
	silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/Shougo/neocomplete.vim/Shougo/neocomplete.vim.sh | bash -s stable
	silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/itchyny/lightline.vim/itchyny/lightline.vim.sh | bash -s stable
	silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/hail2u/vim-css3-syntax/hail2u/vim-css3-syntax.sh | bash -s stable
	silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/Shougo/neosnippet-snippets/Shougo/neosnippet-snippets.sh | bash -s stable
	silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/amirh/HTML-AutoCloseTag/amirh/HTML-AutoCloseTag.sh | bash -s stable
	silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/gorodinskiy/vim-coloresque/gorodinskiy/vim-coloresque.sh | bash -s stable
	silent !\curl -sSL https://raw.githubusercontent.com/avelino/vim-bootstrap/master/vim_template/langs/arnaud-lb/vim-php-namespace/arnaud-lb/vim-php-namespace.sh | bash -s stable

endif

"}}}

"/
"|--------------------------------------------------------------------------
"| Required
"|--------------------------------------------------------------------------
"|
"| Do not support older vi
"/ {{{

set nocompatible

"}}}

"/
"|--------------------------------------------------------------------------
"| Required
"|--------------------------------------------------------------------------
"|
"| Set runtime path
"|
"/ {{{

set runtimepath+=~/.vim/repos/github.com/Shougo/dein.vim/

"}}}

"/
"|--------------------------------------------------------------------------
"| Required
"|--------------------------------------------------------------------------
"|
"| Begin plugin manager
"|
"/ {{{

call dein#begin(expand('~/.vim'))
let pluginsExist = 0

"}}}

"/
"|--------------------------------------------------------------------------
"| Required
"|--------------------------------------------------------------------------
"|
"| Let dein manage itself
"|
"/ {{{

call dein#add('Shougo/dein.vim')

"}}}

"/
"|--------------------------------------------------------------------------
"| Default plugins
"|--------------------------------------------------------------------------
"|
"| Promoted plugins
"|
"/ {{{

call dein#add('scrooloose/nerdtree')
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-markdown', {'on_ft': 'markdown'})
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('sheerun/vim-polyglot')
call dein#add('vim-scripts/grep.vim')
call dein#add('vim-scripts/CSApprox')
call dein#add('bronson/vim-trailing-whitespace')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})

"}}}

"/
"|--------------------------------------------------------------------------
"| Git
"|--------------------------------------------------------------------------
"|
"| Enhanced support for git.
"|
"/ {{{

call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-vinegar')
call dein#add('airblade/vim-gitgutter')

"}}}

"" Vim-Session
call dein#add('xolox/vim-misc')
call dein#add('xolox/vim-session')

"" Snippets
call dein#add('SirVer/ultisnips')
call dein#add('honza/vim-snippets')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

"" Color
call dein#add('gosukiwi/vim-atom-dark')

"" Vim-Bootstrap Updater
call dein#add('sherzberg/vim-bootstrap-updater')

"" Custom bundles
call dein#add('Shougo/vimshell.vim')
call dein#add('benekastah/neomake')
call dein#add('pangloss/vim-javascript')
call dein#add('ervandew/supertab')
call dein#add('godlygeek/tabular')
call dein#add('tpope/vim-repeat')
call dein#add('vim-ruby/vim-ruby')
call dein#add('mattn/emmet-vim', {'on_ft': 'html'})
call dein#add('MarcWeber/vim-addon-mw-utils')
call dein#add('tpope/vim-haml')
call dein#add('hail2u/vim-css3-syntax')
call dein#add('vim-scripts/HTML-AutoCloseTag')
call dein#add('gorodinskiy/vim-coloresque')
call dein#add('arnaud-lb/vim-php-namespace')
call dein#add('Yggdroot/indentLine')

"/
"|--------------------------------------------------------------------------
"| EditorConfig
"|--------------------------------------------------------------------------
"|
"| EditorConfig plugin for vim.
"| See https://github.com/editorconfig/editorconfig-vim
"| for more info.
"|
"/

call dein#add('editorconfig/editorconfig-vim')

"/
"|--------------------------------------------------------------------------
"| PHP Documentor
"|--------------------------------------------------------------------------
"|
"| Generates PHP docblocks.
"|
"| See https://github.com/tobyS/pdv
"| for more info.
"|
"/

call dein#add('tobyS/vmustache', {'on_ft': 'php'})
call dein#add('tobyS/pdv', {'on_ft': 'php'})

"/
"|--------------------------------------------------------------------------
"| JS libraries syntax
"|--------------------------------------------------------------------------
"|
"| let g:used_javascript_libs = 'underscore,backbone'
"| https://github.com/othree/javascript-libraries-syntax.vim
"|
"/

call dein#add('othree/javascript-libraries-syntax.vim')

"/
"|--------------------------------------------------------------------------
"| YAJS
"|--------------------------------------------------------------------------
"|
"| https://github.com/othree/yajs.vim
"|
"/

call dein#add('othree/yajs.vim', {'on_ft': 'javascript'})

"/
"|--------------------------------------------------------------------------
"| ES Next Syntax
"|--------------------------------------------------------------------------
"|
"| Syntax for ES7 and future syntax
"| https://github.com/othree/es.next.syntax.vim
"|
"/

call dein#add('othree/es.next.syntax.vim', {'on_ft': 'javascript'})

"/
"|--------------------------------------------------------------------------
"| JSDoc Syntax
"|--------------------------------------------------------------------------
"|
"| https://github.com/othree/jsdoc-syntax.vim
"|
"/

call dein#add('othree/jsdoc-syntax.vim', {'on_ft':['javascript', 'typescript']})

"/
"|--------------------------------------------------------------------------
"| JSDoc Implementation
"|--------------------------------------------------------------------------
"|
"| See https://github.com/heavenshell/vim-jsdoc
"|
"/

call dein#add('heavenshell/vim-jsdoc')

"/
"|--------------------------------------------------------------------------
"| JSX Syntax
"|--------------------------------------------------------------------------
"|
"| React JSX Syntax highlighting and indenting.
"|
"/

call dein#add('mxw/vim-jsx')

"/
"|--------------------------------------------------------------------------
"| HTML5 Syntax
"|--------------------------------------------------------------------------
"|
"| https://github.com/othree/html5.vim
"|
"/

call dein#add('othree/html5.vim')

"/
"|--------------------------------------------------------------------------
"| Better Javascript Completion
"|--------------------------------------------------------------------------
"|
"| https://github.com/1995eaton/vim-better-javascript-completion
"|
"/

call dein#add('1995eaton/vim-better-javascript-completion', {'on_ft': ['javascript']})

"/
"|--------------------------------------------------------------------------
"| Auto Pairs
"|--------------------------------------------------------------------------
"|
"| Provides automatic closing of quotes, parentheses, brackets, etc.
"|
"| https://github.com/jiangmiao/auto-pairs
"|
"/

call dein#add('jiangmiao/auto-pairs', {'on_ft': ['javascript', 'typescript', 'css', 'scss', 'php']})

"/
"|--------------------------------------------------------------------------
"| Delimit Mate
"|--------------------------------------------------------------------------
"|
"| Provides automatic closing of quotes, parentheses, brackets, etc.
"|
"| https://github.com/1995eaton/vim-better-javascript-completion
"|
"/

" call dein#add('Raimondi/delimitMate', {'on_ft': ['javascript', 'typescript', 'css', 'scss']})

"/
"|--------------------------------------------------------------------------
"| Lightline
"|--------------------------------------------------------------------------
"|
"| Light status/tabline
"| https://github.com/itchyny/lightline.vim
"|
"/

call dein#add('itchyny/lightline.vim')

"/
"|--------------------------------------------------------------------------
"| JSON
"|--------------------------------------------------------------------------
"|
"| https://github.com/elzr/vim-json
"|
"/

call dein#add('elzr/vim-json', {'on_ft': 'json'})

"/
"|--------------------------------------------------------------------------
"| Match Tags
"|--------------------------------------------------------------------------
"|
"| Always highlight eclosing tags
"|
"/

call dein#add('valloric/MatchTagAlways', {'on_ft': 'html'})

"/
"|--------------------------------------------------------------------------
"| Autoformat
"|--------------------------------------------------------------------------
"|
"| https://github.com/Chiel92/vim-autoformat
"|
"/

call dein#add('Chiel92/vim-autoformat')

"/
"|--------------------------------------------------------------------------
"| Toggle Comments
"|--------------------------------------------------------------------------
"|
"| Use <gc> to toggle comment, when in visual mode!
"| https://github.com/tomtom/tcomment_vim
"|
"/

call dein#add('tomtom/tcomment_vim')

"/
"|--------------------------------------------------------------------------
"| Auto correct css/scss style erorrs
"|--------------------------------------------------------------------------
"|
"| vim-stylefmt
"| https://github.com/kewah/vim-stylefmt
"|
"| Format your stylesheets using stylefmt inside Vim. Stylefmt supports the
"| latest CSS syntax and understands CSS-like syntax such as SCSS, Stylus
"| and Less.
"|
"/

call dein#add('kewah/vim-stylefmt')

"/
"|--------------------------------------------------------------------------
"| Preview css colors in code
"|--------------------------------------------------------------------------
"|
"| https://github.com/tomtom/tcomment_vim
"|
"/

call dein#add('ap/vim-css-color')

"/
"|--------------------------------------------------------------------------
"| An Interface to WEB APIs.
"|--------------------------------------------------------------------------
"|
"| https://github.com/mattn/webapi-vim
"|
"/

call dein#add('mattn/webapi-vim')

"//------------------------------------------------------

"/
"|--------------------------------------------------------------------------
"| Shougo
"|--------------------------------------------------------------------------
"|
"| Autocomplete. All of these support each other. Keep them!
"|
"/

call dein#add('Shougo/deoplete.nvim')
call dein#add('Shougo/neco-vim', {'on_ft': 'vim'})
call dein#add('Shougo/neoinclude.vim')
call dein#add('Shougo/neocomplete.vim')
call dein#add('ujihisa/neco-look')

"/
"|--------------------------------------------------------------------------
"| Improved buffer deletion
"|--------------------------------------------------------------------------
"|
"| https://github.com/mhinz/vim-sayonara
"|
"/

call dein#add('mhinz/vim-sayonara')

let g:vim_bootstrap_langs = "javascript,php,html"
let g:vim_bootstrap_editor = "nvim"

"/
"|--------------------------------------------------------------------------
"| Required
"|--------------------------------------------------------------------------
"|
"| Install missing plugins
"/

if dein#check_install()
	call dein#install()
endif

"/
"|--------------------------------------------------------------------------
"| Required
"|--------------------------------------------------------------------------
"|
"| End plugin manager
"/

call dein#end()

"/
"|--------------------------------------------------------------------------
"| Required
"|--------------------------------------------------------------------------
"|
"| Enable plugin indent
"/

filetype plugin indent on
