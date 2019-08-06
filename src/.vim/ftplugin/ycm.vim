" YCM 配置
    " 加载 ycm_extra_conf
        let g:ycm_global_ycm_extra_conf='~/.vim/ftplugin/.ycm_extra_conf.py'
    " 颜色
        highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
        highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black
    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
        set completeopt=longest,menu	
    "离开插入模式后自动关闭预览窗口
        autocmd InsertLeave * if pumvisible() == 0|pclose|endif	
    "回车即选中当前项
        "inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	
    "上下左右键的行为 会显示其他信息
        inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
        inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
        inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
        inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
    "youcompleteme  默认tab  s-tab 和自动补全冲突
        let g:ycm_key_list_select_completion=['<c-n>']
        "let g:ycm_key_list_select_completion = ['<Down>']
        let g:ycm_key_list_previous_completion=['<c-p>']
        "let g:ycm_key_list_previous_completion = ['<Up>']
        let g:ycm_confirm_extra_conf=1
    " 开启 YCM 基于标签引擎
        let g:ycm_collect_identifiers_from_tags_files=1
    " 从第2个键入字符就开始罗列匹配项
        let g:ycm_min_num_of_chars_for_completion=2
    " 禁止缓存匹配项,每次都重新生成匹配项
        let g:ycm_cache_omnifunc=0
    " 语法关键字补全
        let g:ycm_seed_identifiers_with_syntax=1
    "force recomile with syntastic
        nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
    "open locationlist
        "nnoremap <leader>lo :lopen<CR>
    "close locationlist
        "nnoremap <leader>lc :lclose<CR>
        "inoremap <leader><leader> <C-x><C-o>
    "在注释输入中也能补全
        let g:ycm_complete_in_comments = 1
    "在字符串输入中也能补全
        let g:ycm_complete_in_strings = 1
    "注释和字符串中的文字也会被收入补全
        let g:ycm_collect_identifiers_from_comments_and_strings = 0
    " 显示错误UI
        let g:ycm_show_diagnostics_ui = 1
    " 错误标识符
        let g:ycm_error_symbol='>>'
    " 警告标识符
        let g:ycm_warning_symbol='>*'
    " 不查询ultisnips提供的代码模板补全，如果需要，设置成1即可
        let g:ycm_use_ultisnips_completer=1
    " 跳转到定义处
        nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 设置ultisnips
    let g:UltiSnipsExpandTrigger = "<tab>"
    let g:UltiSnipsJumpForwardTrigger = "<tab>"
    let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
    " If you want :UltiSnipsEdit to split your window.
        let g:UltiSnipsEditSplit="vertical"
" 设置参数补全
    " 最小设置
        inoremap <silent><expr> ( complete_parameter#pre_complete("()")
        smap <c-j> <Plug>(complete_parameter#goto_next_parameter)
        imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
        smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
        imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
    " 使用ultisnips 上下参数
        let g:complete_parameter_use_ultisnips_mapping = 1
" 设置ctrlsf 跳转
    let g:ctrlsf_position = 'left'
    let g:ctrlsf_regex_pattern = 1
    let g:ctrlsf_case_sensitive = 'yes'
    let g:ctrlsf_default_root = 'project'
    let g:ctrlsf_auto_close = 0
    let g:ctrlsf_winsize = '30%'
    let g:ctrlsf_ackprg = 'ack'
    " 快捷键
        nmap <Leader>f :CtrlSF<CR>
        nmap <Leader>F <Plug>CtrlSFPrompt
