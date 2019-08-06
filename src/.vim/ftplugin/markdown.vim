" 实时显示
    let g:instant_markdown_slow=1
" 手动启动窗口
    let g:instant_markdown_autostart=1
    imap <F5> <Esc>:InstantMarkdownPreview<cr>
    nmap <F5> :InstantMarkdownStop<cr>
" 不公开服务器
    let g:instant_markdown_open_to_the_world=0
" 不运行脚本
    let g:instant_markdown_allow_unsafe_content=1
" 错误日志
    let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
" tex代码
    let g:instant_markdown_mathjax = 1
" 浏览器
    let g:instant_markdown_browser = "google-chrome-stable --new-window"
" 开启端口
    let g:instant_markdown_port = 8090
" 光标同步
    let g:instant_markdown_autoscroll = 0
