
""""""""""""""""""""""""Vunble"""""""""""""""""""""""""""""
"set nocompatible              " be iMproved, required
"filetype off                  " required
"
"" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"" alternatively, pass a path where Vundle should install plugins
""call vundle#begin('~/some/path/here')
"
"" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
"
"" The following are examples of different formats supported.
"" Keep Plugin commands between vundle#begin/end.
"" plugin on GitHub repo
""Plugin 'tpope/vim-fugitive'
"" plugin from http://vim-scripts.org/vim/scripts.html
""Plugin 'L9'
"" Git plugin not hosted on GitHub
""Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
""Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Avoid a name conflict with L9
""Plugin 'user/L9', {'name': 'newL9'}
"
"" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required
"" To ignore plugin indent changes, instead use:
""filetype plugin on
""
"" Brief help
"" :PluginList       - lists configured plugins
"" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
"" :PluginSearch foo - searches for foo; append `!` to refresh local cache
"" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
""
"" see :h vundle for more details or wiki for FAQ
"" Put your non-Plugin stuff after this line
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""
""Plugin of mine
""YouCompleteMe is a very good plugin for fixcode
"Bundle 'Valloric/YouCompleteMe'
"
""Bundle 'tpope/vim-fugitive' 
""Bundle 'Lokaltog/vim-easymotion' 
""Bundle 'rstacruz/sparkup', {'rtp': 'vim/'} 
""Bundle 'tpope/vim-rails.git' 
""Bundle 'scrooloose/nerdtree' 
""Bundle 'kien/ctrlp.vim' 
""Bundle 'msanders/snipmate.vim' 
""Bundle 'mileszs/ack.vim' 
""Bundle 'Shougo/neocomplcache.vim' 
""Bundle 'Townk/vim-autoclose' 
""Bundle 'Lokaltog/vim-easymotion' 
""Bundle 'Lokaltog/vim-powerline'
"
"
"
"" My Bundle here:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""语法高亮
""""""""""""""""""""""""""""""""
"Bundle 'JavaScript-syntax'
"Bundle 'jQuery'
"Bundle 'othree/html5.vim'
"Bundle 'groenewege/vim-less'
"Bundle 'Markdown'
"Bundle 'Markdown-syntax'
""Bundle 'php.vim-html-enhanced' "一个TAB为3个空格 = =
""Bundle 'css_color.vim'
""增加了rgb显示颜色和同行显示多处颜色
"Bundle 'skammer/vim-css-color'
"
""above the Vim UI
""""""""""""""""""""""""""""""""
"Bundle 'winmanager'
"Bundle 'scrooloose/nerdtree'
"Bundle 'scrooloose/nerdcommenter'
"Bundle 'taglist.vim'
"Bundle 'fholgado/minibufexpl.vim'
""Bundle 'bufexplorer.zip'
"Bundle 'Lokaltog/vim-powerline'
""Make gvim-only colorschemes work transparently in terminal vim
"Bundle 'CSApprox'
"
""AutoComplete
""""""""""""""""""""""""""""""""
""Bundle 'AutoComplPop'
""Bundle 'msanders/snipmate.vim' "自带了snippets
""Bundle 'Pydiction'
"Bundle 'Shougo/neocomplcache'
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'
""Bundle 'honza/snipmate-snippets'
"Bundle 'spf13/snipmate-snippets'
"Bundle 'garbas/vim-snipmate'
"
"Bundle 'ZenCoding.vim'
"let g:user_zen_expandabbr_key='<C-u>'
"
""Bundle 'word_complete.vim'
"Bundle 'closetag.vim'
"
""PHP
""press K on a function for full PHP manual
"Bundle 'spf13/PIV'
"
""Tools
"""""""""""""""""""""""""""""""
"Bundle 'udonmai/Conque-Shell'
"Bundle 'grep.vim'
"Bundle 'vim-flake8'
"
"filetype plugin indent on     " required!
""
"" Brief help
"" :BundleList          - list configured bundles
"" :BundleInstall(!)    - install(update) bundles
"" :BundleSearch(!) foo - search(or refresh cache first) for foo
"" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
""
"" see :h vundle for more details or wiki for FAQ
"" NOTE: comments after Bundle command are not allowed..
"

" 一般设定 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 设定默认解码 
set fenc=utf-8 
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936 

" 不要使用vi的键盘模式，而是vim自己的 
set nocompatible 

" history文件中需要记录的行数 
set history=100 

" 在处理未保存或只读文件的时候，弹出确认 
set confirm 

" 与windows共享剪贴板 
set clipboard+=unnamed 

" 侦测文件类型 
filetype on 

" 载入文件类型插件 
filetype plugin on 

" 为特定文件类型载入相关缩进文件 
filetype indent on 

" 保存全局变量 
set viminfo+=! 

" 带有如下符号的单词不要被换行分割 
set iskeyword+=_,$,@,%,#,- 

" 语法高亮 
syntax on 

" 高亮字符，让其不受100列限制 
:highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white 
:match OverLength '\%101v.*' 

" 状态行颜色 
highlight StatusLine guifg=SlateBlue guibg=Yellow 
highlight StatusLineNC guifg=Gray guibg=White 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文件设置 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 不要备份文件（根据自己需要取舍） 
"set nobackup 

" 不要生成swap文件，当buffer被丢弃的时候隐藏它 
"setlocal noswapfile 
"set bufhidden=hide 

" 字符间插入的像素行数目 
set linespace=0 

" 增强模式中的命令行自动完成操作 
set wildmenu 

" 在状态行上显示光标所在位置的行号和列号 
set ruler 
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%) 

" 命令行（在状态行下）的高度，默认为1，这里是2 
"set cmdheight=2 

" 使回格键（backspace）正常处理indent, eol, start等 
set backspace=2 

" 允许backspace和光标键跨越行边界 
set whichwrap+=<,>,h,l 

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位） 
set mouse=a 
set selection=exclusive 
set selectmode=mouse,key 

" 启动的时候不显示那个援助索马里儿童的提示 
set shortmess=atI 

" 通过使用: commands命令，告诉我们文件的哪一行被改变过 
set report=0 

" 不让vim发出讨厌的滴滴声 
"set noerrorbells 

" 在被分割的窗口间显示空白，便于阅读 
set fillchars=vert:\ ,stl:\ ,stlnc:\ 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 搜索和匹配 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 高亮显示匹配的括号 
set showmatch 

" 匹配括号高亮的时间（单位是十分之一秒） 
set matchtime=5 

" 在搜索的时候忽略大小写 
set ignorecase 

" 不要高亮被搜索的句子（phrases） 
set nohlsearch 

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索） 
set incsearch 

" 输入:set list命令是应该显示些啥？ 
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ 

" 光标移动到buffer的顶部和底部时保持3行距离 
set scrolloff=3 

" 不要闪烁 
set novisualbell 

" 我的状态行显示的内容（包括文件类型和解码） 
set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")} 

" 总是显示状态行 
set laststatus=2 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文本格式和排版 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 自动格式化 
set formatoptions=tcrqn 

" 继承前一行的缩进方式，特别适用于多行注释 
set autoindent 

" 为C程序提供自动缩进 
set smartindent 

" 使用C样式的缩进 
set cindent 

" 制表符为4 
set tabstop=4 

" 统一缩进为4 
set softtabstop=4 
set shiftwidth=4 

" 不要用空格代替制表符 
set noexpandtab 

" 不要换行 
"set nowrap 

"yao huan hang
set wrap

" 在行和段开始处使用制表符 
set smarttab 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" CTags的设定 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 按照名称排序 
let Tlist_Sort_Type = "name" 

" 在右侧显示窗口 
let Tlist_Use_Right_Window = 1 

" 压缩方式 
let Tlist_Compart_Format = 1 

" 如果只有一个buffer，kill窗口也kill掉buffer 
let Tlist_Exist_OnlyWindow = 1 

" 不要关闭其他文件的tags 
let Tlist_File_Fold_Auto_Close = 0 

" 不要显示折叠树 
"let Tlist_Enable_Fold_Column = 0 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Autocommands 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 只在下列文件类型被侦测到的时候显示行号，普通文本文件不显示 

if has("autocmd") 
autocmd FileType xml,html,c,cs,java,perl,shell,bash,cpp,python,vim,php,ruby set number 
autocmd FileType xml,html vmap <C-o> <ESC>'<i<!--<ESC>o<ESC>'>o--> 
autocmd FileType java,c,cpp,cs vmap <C-o> <ESC>'<o 
autocmd FileType html,text,php,vim,c,java,xml,bash,shell,perl,python setlocal textwidth=100 
autocmd Filetype html,xml,xsl source $VIMRUNTIME/plugin/closetag.vim 
autocmd BufReadPost * 
\ if line("'\"") > 0 && line("'\"") <= line("$") | 
\ exe " normal g`\"" | 
\ endif 
endif "has("autocmd") 

" F5编译和运行C程序，F6编译和运行C++程序 
" 请注意，下述代码在windows下使用会报错 
" 需要去掉./这两个字符 

" C的编译和运行 
map <F5> :call CompileRunGcc()<CR> 
func! CompileRunGcc() 
exec "w" 
exec "!gcc % -o %<" 
exec "! ./%<" 
endfunc 

" C++的编译和运行 
map <F6> :call CompileRunGpp()<CR> 
func! CompileRunGpp() 
exec "w" 
exec "!g++ % -o %<" 
exec "! ./%<" 
endfunc 

" 能够漂亮地显示.NFO文件 
set encoding=utf-8 
function! SetFileEncodings(encodings) 
let b:myfileencodingsbak=&fileencodings 
let &fileencodings=a:encodings 
endfunction 
function! RestoreFileEncodings() 
let &fileencodings=b:myfileencodingsbak 
unlet b:myfileencodingsbak 
endfunction 

au BufReadPre *.nfo call SetFileEncodings('cp437')|set ambiwidth=single au BufReadPost *.nfo call RestoreFileEncodings() 

" 高亮显示普通txt文件（需要txt.vim脚本） 
au BufRead,BufNewFile * setfiletype txt 

" 用空格键来开关折叠 
set foldenable 
set foldmethod=manual 
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR> 

" minibufexpl插件的一般设置 
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
"====================================
"    FileName: .vimrc
"    Author:   hahaya
"    Version:  1.0.0
"    Email:    hahayacoder@gmail.com
"    Blog: http://hahaya.github.com
"    Date: 2013-7-23
"=============================================
"==================================
"    Vim基本配置
"===================================
"配置backspace键工作方式
set backspace=indent,eol,start
"显示行号
set number
"设置在编辑过程中右下角显示光标的行列信息
set ruler
"当一行文字很长时取消换行
"set nowrap
"在状态栏显示正在输入的命令
set showcmd
"设置历史记录条数
set history=1000
"设置取消备份 禁止临时文件生成
set nobackup
set noswapfile
"突出现实当前行列
"set cursorline
"set cursorcolumn
"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set showmatch
"设置C/C++方式自动对齐
set autoindent
set cindent
"开启语法高亮功能
syntax enable
syntax on
"指定配色方案为256色
set t_Co=256
"设置搜索时忽略大小写
set ignorecase
"设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
set mouse=a
"设置Tab宽度
set tabstop=4
"设置自动对齐空格数
set shiftwidth=4
"设置按退格键时可以一次删除4个空格
set softtabstop=4
"设置按退格键时可以一次删除4个空格
set smarttab
"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
set expandtab
"设置编码方式
set encoding=utf-8
"自动判断编码时 依次尝试一下编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"检测文件类型
"filetype on
"针对不同的文件采用不同的缩进方式
filetype indent on
"允许插件
filetype plugin on
"启动智能补全
filetype plugin indent on""""""""""""""""""""""""""""""""""""""""
