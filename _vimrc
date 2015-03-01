"---------------------------
" ↓↓基本設定
"---------------------------

" Swapを作らない
set noswapfile

" BS有効
set backspace=indent,eol,start

" 文字コード自動判別
:set encoding=utf-8
:set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8

"---------------------------
" ↓↓表示設定
"---------------------------

" 行番号を表示
set number

" Syntax
syntax on

" 半透明
autocmd GUIEnter * set transparency=240

" カラースキーム
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid

"半角文字の設定
set guifont=MS_Gothic:h10

"全角文字の設定
set guifontwide=MS_Gothic:h10

"---------------------------
" Start Neobundle Settings.
"---------------------------

" neobundle
set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
  set runtimepath+=~/vim/bundle/neobundle.vim,~/vimfiles
endif

call neobundle#begin(expand('~/vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()

"-------------------------
" ↓↓ここからプラグインを追記。
"-------------------------

" PowerLine
NeoBundle 'alpaca-tc/alpaca_powertabline'
NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}
NeoBundle 'Lokaltog/powerline-fontpatcher'

" vimfiler/ファイラ
NeoBundle 'Shougo/vimfiler'
NeoBundle 'git://github.com/Shougo/unite.vim.git'

" NERDTree/ディレクトリツリー
NeoBundle 'scrooloose/nerdtree'

" autoclose/自動括弧閉じ
NeoBundle 'Townk/vim-autoclose'

" Emmet/HTML入力効率化     
NeoBundle 'mattn/emmet-vim'

" surround.vim/'Sx'で選択範囲を囲う 
NeoBundle 'tpope/vim-surround'

" jellybeans (color scheme)
NeoBundle 'nanotech/jellybeans.vim'

" hybrid (color scheme)
NeoBundle 'w0ng/vim-hybrid'

" unite.vim
NeoBundle 'Shougo/unite.vim'

" unite-colorscheme
NeoBundle 'ujihisa/unite-colorscheme'

"-------------------------
" ↑↑ここまでプラグインを追記。
"-------------------------

call neobundle#end()
 
" Required:
filetype plugin indent on

" 未インストールのチェック
NeoBundleCheck

