"vundle（プラグインマネージャの設定）
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"" 導入したいプラグインを以下に列挙
"" Plugin '[Github Author]/[Github repo]'の形式で記入
""" frontend
Plugin 'othree/html5.vim'
""" javascript
Plugin 'pangloss/vim-javascript'
Plugin 'othree/yajs.vim'
Plugin 'othree/es.next.syntax.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'leafgarland/typescript-vim'
Plugin 'ternjs/tern_for_vim'

call vundle#end()
filetype plugin indent on
" プラグインマネージャここまで

"" その他のカスタム設定
"文字コードをUTF-8に設定
set fenc=utf-8
"バックアップファイルを作らない
set nobackup
"スワップファイルを作らない
set noswapfile
"編集中のファイルが更新されたら自動で読み直す
set autoread
"バッファが編集中でもその他のファイルを開けるようにする
set hidden
"入力中のコマンドをステータスに表示する
set showcmd
"保存時に行末の空白を削除する
autocmd BufWritePre * :%s/\s\+$//ge
"マウス操作を有効にする
set mouse=a

"行番号の表示
set number
"現在の行を強調表示
set cursorline
"現在の列を強調表示
set cursorcolumn
"行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
"ビープ音を可視化
set visualbell
"括弧入力時の対応関係を表示
set showmatch
"ステータスラインを常に表示
set laststatus=2
"ステータスラインの表示形式
set statusline=%F%m%r%h%w\ %<[ENC=%{&fenc!=''?&fenc:&enc}]\ [FMT=%{&ff}]\ [TYPE=%Y]\ %=[CODE=0x%02B]\ [POS=%l/%L(02v)]
"コマンドラインの補完
set wildmode=list:longest

"ターミナルのタイトルをセットする
set title
"文脈によって解釈が異なる全角文字の幅を2に固定する
set ambiwidth=double

"tabを半角スペースで挿入する
set expandtab
"タブ幅をスペース2つ分にする
set tabstop=2
"vimが自動で生成する（読み込み時など）タブ幅をスペース2つ分にする
set shiftwidth=2
"改行時などに、自動でインデントを設定してくれる
set smartindent

"空白文字の可視化
set list
"可視化した空白文字の表示形式
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
"カーソルの回り込みができるようにする
set whichwrap=b,s,h,l,[,],<,>,~
""0"で始まる数値を8進数として扱わない
set nrformats-=octal
"バックスペースを空白、行末、行頭でも使えるようにする
set backspace=indent,eol,start
"テキストが折り返されないようにする
set nowrap

"色の設定
colorscheme tender
syntax on

"検索パターンにおいて大文字と小文字を区別しない
set ignorecase
"検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
"検索時に最後まで行ったら最初に戻る
set wrapscan
"検索語をハイライト表示
set hlsearch
"ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

