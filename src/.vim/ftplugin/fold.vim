" Indent Guide
    " 随 vim 自启动
        let g:indent_guides_enable_on_vim_startup=1
    " 从第二层开始可视化显示缩进
        let g:indent_guides_start_level=2
    " 色块宽度
        let g:indent_guides_guide_size=1
    " 快捷键 i 开/关缩进可视化
        :nmap <Leader>c<tab> <Plug>IndentGuidesToggle
    " 颜色
        hi IndentGuidesOdd  ctermbg=black
        hi IndentGuidesEven ctermbg=darkgrey
set wrap
"set linebreak
nnoremap <space> za
set wrapmargin=2
set foldmethod=expr
set foldexpr=GetPotionFold(v:lnum)
function! GetPotionFold(lnum)
    if getline(a:lnum) =~? '\v^\s*$'
        return '-1'
    endif

    let this_indent = IndentLevel(a:lnum)
    let next_indent = IndentLevel(NextNonBlankLine(a:lnum))

    if next_indent == this_indent
        return this_indent
    elseif next_indent < this_indent
        return this_indent
    elseif next_indent > this_indent
        return '>' . next_indent
    endif
    endfunction
function! IndentLevel(lnum)
    return indent(a:lnum) / &shiftwidth
    endfunction
function! NextNonBlankLine(lnum)
    let numlines = line('$')
    let current = a:lnum + 1

    while current <= numlines
        if getline(current) =~? '\v\S'
            return current
        endif

        let current += 1
    endwhile

    return -2
    endfunction
set nofoldenable
