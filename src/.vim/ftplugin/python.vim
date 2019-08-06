" 加载YCM
    source ~/.vim/ftplugin/ycm.vim
    let g:ycm_python_binary_path = '/usr/bin/python3'
    let g:jedi#completions_enabled = 1
" 显示行列
    set cursorline
    set cursorcolumn
" 编码
    set encoding=utf-8
    set fenc=utf-8
" 主题
    let g:solarized_termcolors=256
    set background=dark
    colorscheme solarized8
    let g:Powerline_colorscheme='solarized256'
" 状态栏
    let g:airline_theme='solarized'
" 缩进
    set nofoldenable
" Nerd tree
    " 单个文件
        autocmd vimenter * NERDTree
    " 单独vim
        "autocmd StdinReadPre * let s:std_in=1
        "autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    " 打开目录
        "autocmd StdinReadPre * let s:std_in=1
        "autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
    " 启动快捷键
        map <leader>nt :NERDTreeToggle<CR>
" REPL
    " 指定打开文件
        let g:repl_program = {
        \   "python": "python",
        \   "default": "bash"
        \   }
    " 指定退出命令
        let g:repl_exit_commands = {
                    \   "python": "quit()",
                    \   "bash": "exit",
                    \   "zsh": "exit",
                    \   "default": "exit",
                    \   }
    " 位置设定
        let g:repl_position = 3 "0代表底部 1代表顶部 2代表左 3代表右
        let g:repl_width = 30
        "let g:repl_height = 200
    " 打开REPL后留在文件中
        let g:repl_stayatrepl_when_open = 0
    " 发送
        let g:repl_auto_sends = ['class ', 'def ', 'for ', 'if ', 'while ']
        let g:repl_cursor_down = 1
        let g:repl_python_automerge = 1
    " 预先加载
        "let g:repl_predefine_python = {
        "        \   'numpy': 'import numpy as np',
        "        \   'matplotlib': 'from matplotlib import pyplot as plt'
        "        \   }
    " 快捷键
        " 发送代码
            let g:sendtorepl_invoke_key = "\\"
        " 显示REPL
            nnoremap <leader>re :REPLToggle<cr>
        " 启动调试
            "nnoremap <leader>rd :REPLDebug<cr>
        " 设置断点：
            "nnoremap <leader>rb :REPLDebugStopAtCurrentLine<cr>
        " 运行代码：
            "nnoremap <leader>rr :REPLPDBC<cr>
            nnoremap <leader>rr :REPLSendAll<cr>
        " 单步执行：
            "nnoremap <leader>rs :REPLPDBN<cr>
        " 进入函数：
            "nnoremap <leader>rf :REPLPDBS<cr>
        " 进入上一个栈：
            "nnoremap <leader>rk :REPLPDBU<cr>
    " 自动启动
" ALE
    " 标志列
        let g:ale_sign_column_always = 1
        let g:ale_set_highlights = 0
    " 错误提示
        let g:ale_sign_error = '>>'
        let g:ale_sign_warning = '--'
    "在vim自带的状态栏中整合ale
        let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
    "显示Linter名称,出错或警告等相关信息
        let g:ale_echo_msg_error_str = 'E'
        let g:ale_echo_msg_warning_str = 'W'
        let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
    " 启动时间
        let g:ale_lint_on_insert_leave = 1
        let g:ale_fix_on_save = 1
    "普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
        nmap <leader>N <Plug>(ale_previous_wrap)
        nmap <leader>n <Plug>(ale_next_wrap)
    "<Leader>s触发/关闭语法检查
        nmap <Leader>ale :ALEToggle<CR>
    "<Leader>d查看错误或警告的详细信息
        nmap <Leader>e :ALEDetail<CR>
