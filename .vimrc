""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 設定 gvim 運行在增強模式下 不使用 vi 
set nocompatible
filetype on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 設定支持多語言解決亂碼問題
" 設定内部編碼為utf-8
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,default,latin1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 設定中文幫助
set helplang=cn

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 設置包括vundle和初始化相關的runtime path 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
 
" vendle 插件
Plugin 'VundleVim/Vundle.vim'


" airlin
Plugin 'vim-airline/vim-airline'
" git 顯示branch
Plugin 'tpope/vim-fugitive'
" 指定主題
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme = 'solarized'
" vim-airline配置:優化vim界面
let g:airline#extensions#tabline#enabled = 1
" airline 設定
" 使用powerline打過補丁的字體
let g:airline_powerline_fonts = 1
" 開啟tabline
let g:airline#extensions#tabline#enabled = 1
" tabline中當前buffer兩的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer兩端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
" 映射<leader>num到num buffer
map <leader>1 :b 1<CR>
map <leader>2 :b 2<CR>
map <leader>3 :b 3<CR>
map <leader>4 :b 4<CR>
map <leader>5 :b 5<CR>
map <leader>6 :b 6<CR>
map <leader>7 :b 7<CR>
map <leader>8 :b 8<CR>
map <leader>9 :b 9<CR>
 
"" vim-scripts 中的插件 "
"Plugin 'taglist.vim'
""ctags 配置:F3快捷鍵顯示程序中的各種tags，包括變量和函数等。
"map <F3> :TlistToggle<CR>
"let Tlist_Use_Right_Window=1
"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1
"let Tlist_WinWidt=25
 
 " The-NERD-tree 的插件 "
Plugin 'The-NERD-tree'
"NERDTree 配置:F2快捷鍵顯示當前目錄樹
map <F2> :NERDTreeToggle<CR>
let NERDTreeWinSize=25 
Plugin 'indentLine.vim'
Plugin 'delimitMate.vim'

" icon 插件
Plugin 'ryanoasis/vim-devicons'

" 非 github 的插件
Plugin 'git://git.wincent.com/command-t.git'

" 本地的插件
call vundle#end()
 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"鍵盤命令

nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>
 
" 映射全選+复制 ctrl+a
map <C-A> ggVGY
map! <C-A> <Esc>ggVGY
map <F12> gg=G

" 選中狀態下 Ctrl+c 複製
vmap <C-c> "+y
 
 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 一般設置


" 程式碼語法高亮支援
syntax enable
" 主題顏色區塊
colorscheme molokai
set t_Co=256
" 設置當文件被改動時自動载入
set autoread
" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
" 代碼補全 
set completeopt=preview,menu 
" 允許插件  
filetype plugin on
" 共享剪貼  
set clipboard=unnamed 
" 不備份  
set nobackup
" make 運行
:set makeprg=g++\ -Wall\ \ %
" 自動保存
set autowrite
" 打開狀態列
set ruler
" 顯示當前行
set cursorline
" 設定魔術
set magic
" 隱藏工具欄
set guioptions-=T
" 隱藏菜單欄
set guioptions-=m           
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
" 設定在狀態行顯示的訊息
set foldcolumn=0
set foldmethod=indent 
set foldlevel=3
" 开始折叠
set foldenable              
" 不要使用vi的鍵盤模式，而是vim自己的
set nocompatible
" 語法高亮
set syntax=on
" 去掉輸入錯誤的提示聲音
set noeb
" 在處理未保存或只讀文件的時候彈出確認
set confirm
" 自動縮排
set autoindent
set cindent
" Tab的寬度
set tabstop=4
" 统一縮排为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替製表符
set noexpandtab
" 在行和段開始處使用製表符
set smarttab
" 顯示行數
set number
" 歷史紀錄
set history=1000
"禁止生成臨時文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault
" 編碼設定
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
" 語言設定
set langmenu=zh_TW.UTF-8
"set helplang=zh_TW
" 我的狀態行顯示的内容（包括文件類型和解碼）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
" 總是顯示狀態行
set laststatus=1
" 命令行（在狀態下）的高度，默認為1，這裏是2
set cmdheight=2
" 偵測文件類型
filetype on
" 載入文件類型插件
filetype plugin on
" 等待並文件類型仔入相關縮進文件
filetype indent on
" 保存全局變量
set viminfo+=!
" 帶有如下符號的單詞不要被換行分割
set iskeyword+=_,$,@,%,#,-
" 字符間插入的像素行數目
set linespace=0
" 增强模式中的命令行自動完成操作
set wildmenu
" 使回格键（backspace）正常處理indent, eol, start等
set backspace=2
" 允许backspace和光標鍵跨越行邊界
set whichwrap+=<,>,h,l
" 可以在buffer的任何地方使用滑鼠
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" 通过使用: commands命令，告訴我们文件的哪一行被改改過
set report=0
" 在被分割的窗口間顯示空以便閱讀
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮顯示匹配的括號
set showmatch
" 匹配括號高亮的时间（單位是十分之一秒）
set matchtime=1
" 游標移動到bugger的頂部和底部抱持多少行數
set scrolloff=5
" 為C語言提供自動縮排
set smartindent
" 高亮顯示普通txt文件（需要txt.vim脚本）
 au BufRead,BufNewFile *  setfiletype txt
" 自動補全
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {<CR>}<ESC>O
":inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction
filetype plugin indent on 
" 打開文件類型檢測(智能補全)
set completeopt=longest,menu
