" 配置变更立即生效
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 显示设置
    " 显示行号
        set number
    " 设置高亮
        " 语法高亮
            syntax enable
            syntax on
        " 括号高亮
            set showmatch
        " 搜索高亮
            " 实时搜索
                set incsearch
            " 搜索大小写不敏感
                set ignorecase
            " 当光标一段时间保持不动了，就禁用高亮
                autocmd cursorhold * set nohlsearch
            " 当输入查找命令时，再启用高亮
                noremap n :set hlsearch<cr>n
                noremap N :set hlsearch<cr>N
                noremap / :set hlsearch<cr>/
                noremap ? :set hlsearch<cr>?
                noremap * *:set hlsearch<cr>
        " 复制高亮显示时间
            let g:highlightedyank_highlight_duration = 1000
    " 设置缩进
        set tabstop=4
        set shiftwidth=4
        set expandtab
        set softtabstop=4
    " 多余空格
        set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽
    " 设置折叠
        autocmd BufEnter .vimrc,*.vim  source ~/.vim/ftplugin/fold.vim | set foldenable
        autocmd FileType c,cpp,python source ~/.vim/ftplugin/fold.vim
    " 显示状态栏
        set laststatus=2 " 0 不显示 1 多窗口显示 2 显示
    " 显示光标位置
        set ruler
    " 显示行列
        "set cursorline
        "set cursorcolumn
    " 出错闪烁
        "set visualbell 
" 输入设置
    " 设置leader
        let mapleader = ';'
    " 鼠标滚动
        "set mouse=a
        set scrolljump=1
        set scrolloff=2
    " 括号匹配
        " 选择括号内容
            let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip", "it"]
            map <leader>kh <Plug>(wildfire-fuel)
            nmap <leader>ks <Plug>(wildfire-quick-select)
            vmap <leader>kl <Plug>(wildfire-water)
        " 彩虹括号
            " 设置颜色
                let g:rbpt_colorpairs = [
                    \ ['brown',       'RoyalBlue3'],
                    \ ['Darkblue',    'SeaGreen3'],
                    \ ['darkgray',    'DarkOrchid3'],
                    \ ['darkgreen',   'firebrick3'],
                    \ ['darkcyan',    'RoyalBlue3'],
                    \ ['darkred',     'SeaGreen3'],
                    \ ['darkmagenta', 'DarkOrchid3'],
                    \ ['brown',       'firebrick3'],
                    \ ['gray',        'RoyalBlue3'],
                    \ ['black',       'SeaGreen3'],
                    \ ['darkmagenta', 'DarkOrchid3'],
                    \ ['Darkblue',    'firebrick3'],
                    \ ['darkgreen',   'RoyalBlue3'],
                    \ ['darkcyan',    'SeaGreen3'],
                    \ ['darkred',     'DarkOrchid3'],
                    \ ['red',         'firebrick3'],
                    \ ]
            " 最高对数
                let g:rbpt_max = 16
                let g:rbpt_loadcmd_toggle = 0
            "自动打开
                au VimEnter * RainbowParenthesesToggle
                au Syntax * RainbowParenthesesLoadRound
                au Syntax * RainbowParenthesesLoadSquare
                au Syntax * RainbowParenthesesLoadBraces
        " 自动配对
            " 设置要自动配对的符号
                let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"'} 
            " 在不同文件类型设置不同的方法
                "let b:AutoPairs = g:AutoParis
            " 插件打开/关闭的快捷键
            let g:AutoPairsShortcutToggle = '<leader>ap'
            " 设置自动为文本添加圆括号的快捷键，默认为ALT+e。
                let g:AutoPairsShortcutFastWrap = '<leader>as'
            " 设置调到下一层括号对的快捷键，默认为ALT+n。
                let g:AutoPairsShortcutJump = '<m-n>'
            " 设置撤销飞行模式的快捷键，默认为ALT+b。
                let g:AutoPairsShortcutBackInsert = '<leader>ab'
            " 把BACKSPACE键映射为删除括号对和引号，默认为1。
                let g:AutoPairsMapBS = 1
            " 把ctrl+h键映射为删除括号对和引号，默认为1。
                let g:AutoPairsMapCh = 1
            " 把ENTER键映射为换行并缩进，默认为1。
                let g:AutoPairsMapCR = 1
            " 当g:AutoPairsMapCR为1时，且文本位于窗口底部时，自动移到窗口中间。
                let g:AutoPairsCenterLine = 1
            " 把SPACE键映射为在括号两侧添加空格，默认为1。
                let g:AutoPairsMapSpace = 1
            " 启用飞行模式，默认为0。
                let g:AutoPairsFlyMode = 0
            " 启用跳出多行括号对，默认为1，为0则只能跳出同一行的括号。
                let g:AutoPairsMultilineClose = 1
    " 键盘映射
        " 窗口移动
            nnoremap <c-h> <c-w>h
            nnoremap <c-j> <c-w>j
            nnoremap <c-k> <c-w>k
            nnoremap <c-l> <c-w>l
            vnoremap <c-h> <c-w><
            vnoremap <c-j> <c-w>-
            vnoremap <c-k> <c-w>+
            vnoremap <c-l> <c-w>>
            "vnoremap <c-=> <c-w>=
        " 窗口保存与退出
            "nnoremap <leader>q :q<CR>
            nnoremap <leader>w :w<CR>
            nnoremap <leader>wq :wa<CR>:q<CR>
            nnoremap <leader>q :qa!<CR>
        " man 提醒
            " 启用:Man命令查看各类man信息
                source $VIMRUNTIME/ftplugin/man.vim
            " 定义:Man命令查看各类man信息的快捷键
                nmap <Leader>man :Man 3 <cword><CR>
        " Easy motion
            " <Leader>f{char} to move to {char}
                map  <Leader><Leader>f <Plug>(easymotion-bd-f)
                nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)
            " s{char}{char} to move to {char}{char}
                nmap <Leader><Leader>s <Plug>(easymotion-overwin-f2)
            " Move to line
                map <Leader><Leader>l <Plug>(easymotion-bd-jk)
                nmap <Leader><Leader>l <Plug>(easymotion-overwin-line)
            " Move to word
                map  <Leader><Leader>w <Plug>(easymotion-bd-w)
                nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)
            " Undo tree
                nnoremap <leader>ud :UndotreeToggle<cr>
    " 命令模式补全
        set wildmenu
        set wildmode=longest:list,full
    " 多点编辑
        let g:multi_cursor_use_default_mapping=0
        let g:multi_cursor_start_word_key      = '<C-n>'
        let g:multi_cursor_select_all_word_key = '<A-n>'
        let g:multi_cursor_start_key           = 'g<C-n>'
        let g:multi_cursor_select_all_key      = 'g<A-n>'
        let g:multi_cursor_next_key            = '<C-n>'
        let g:multi_cursor_prev_key            = '<C-p>'
        let g:multi_cursor_skip_key            = '<C-x>'
        let g:multi_cursor_quit_key            = '<Esc>'
" 文件类型
    " 临时文件
        " 设置环境保存项
            set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
        " Session 保存
            " 保存快捷键
                map <leader>ss :mksession! ~/.vim/.sess/latest.vim<cr> :wviminfo! ~/.vim/.sess/latest.viminfo<cr>
            " 恢复快捷键
                map <leader>rs :source ~/.vim/.sess/latest.vim<cr> :rviminfo ~/.vim/.sess/latest.viminfo<cr>
        " 备份文件
            set backupdir=~/.vim/.backup//
        " 交换文件
            set directory=~/.vim/.swp//
        " 撤销历史
            set undofile
            set history=1000
            set undodir=~/.vim/.undo// 
        " 自动切换工作目录  
            set autochdir
    " 文件类型检测
        filetype on
    " 依据类型添加插件
        filetype plugin on
" 插件安装
    call plug#begin()
        " 文件查看
            Plug 'scrooloose/nerdtree', {'for': ['c','python', 'sh'] }
        " 自动补全
            Plug 'Valloric/YouCompleteMe', {'for': ['markdown', 'c','python', 'sh'], 'do': 'python ./install.py --clang-completer'}
            Plug 'tenfyzhong/CompleteParameter.vim', {'for': ['markdown', 'c','python', 'sh'] }
            Plug 'sirver/ultisnips', {'for': ['markdown', 'c','python', 'sh'] }
            Plug 'keelii/vim-snippets', {'for': ['markdown', 'python', 'c', 'sh']}
        " 主题外观
            Plug 'lifepillar/vim-solarized8', {'for': ['python', 'c', 'sh']}
            Plug 'vim-airline/vim-airline', {'for': ['python', 'c', 'sh']}
            Plug 'vim-airline/vim-airline-themes', {'for': ['python', 'c', 'sh']}
            Plug 'kien/rainbow_parentheses.vim'
            Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
        " 辅助输入
            Plug 'vim-scripts/fcitx.vim', {'for': ['python', 'c', 'sh']}
            Plug 'nathanaelkane/vim-indent-guides', {'for': ['vim', 'python', 'c', 'sh']}
            Plug 'Lokaltog/vim-easymotion'
            Plug 'mbbill/undotree'
            Plug 'terryma/vim-multiple-cursors'
            Plug 'jiangmiao/auto-pairs'
            Plug 'gcmt/wildfire.vim'
        " 语法检查
            Plug 'dense-analysis/ale', {'for': 'python'}
        " 编译执行
            Plug 'sillybun/vim-repl', {'for': 'python'}
            Plug 'sillybun/vim-async', {'for': 'python', 'do': './install.sh'}
            Plug 'sillybun/zytutil', {'for': 'python'}
        " 快速跳转
            Plug 'derekwyatt/vim-fswitch', {'for': 'c'}
            Plug 'kshenoy/vim-signature'
            Plug 'dyng/ctrlsf.vim', {'for': ['python','c']}
    call plug#end()
