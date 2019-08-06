# vim 调试日志
## 题记
前不久经常在用python，好友一直在安利我用pyCharm. 我无奈的看着我很久前跟风安装的space-vim.不仅不会用，还经常卡个半死.索性心一横决定从头配置一番vim.  

ps: 这篇文章写给有一定vim基础的人，如果还没了教过vim请移步至[vim介绍和基本按键](https://www.ibm.com/developerworks/cn/linux/l-cn-tip-vim/index.html)
  
---

### vim 自带配置
vim 自带很多有用的配置，但是默认是不会启用的.这里将做个简单整理，详细的可以查看我的[配置文件](../src/.vim/)
#### 1. 显示行号  
```vim
set number
```
这项功能可不只是方便调试用的，更多是为了在vim这个不需要鼠标的环境里快速跳转。
#### 2. 括号高亮
```vim
set showmatch
```
这个不多说，有时候一堆括号确实把人搞得挺头疼的，尤其是类lisp语言
#### 3. 搜索高亮
默认的vim搜索时一点提示都没有，什么都没有。
##### 3.1 实时搜索
```vim
set incsearch
```
通过这个可以在输入时显示搜到都位置。
##### 3.2 搜索大小写不敏感
```vim
set ignorecase
```
依据自己需求把，反正我是大小写分不清
##### 3.3 当光标一段时间保持不动了，就禁用高亮
```vim
autocmd cursorhold * set nohlsearch
```
##### 3.4 当输入查找命令时，再启用高亮
```vim
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>
```
上面两条时由于高亮显示时间的，你可不希望高亮一直显示吧。
##### 3.4 复制高亮显示时间
```vim
let g:highlightedyank_highlight_duration = 1000
```
讲真，以前的配置，具体功能忘记了.....
#### 4. 设置缩进
```vim
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
```
用过python的同学都知道，缩进对其是怎样特殊的存在了吧。这个配置将缩进设置为4个空格，删除4个空格。
#### 5. 依据文件类型加载配置文件
```vim
filetype on
```
开启文件类型检测
```vim
filetype plugin on
```
依据类型添加插件，按文件类型写在ftplugin文件夹中。可以在编辑不同文件类型启用不同的配置。
#### 6. 鼠标与滚动
```vim
set mouse=a
```
上鼠标可以操作vim, 比如鼠标选择启动可视模式。但是与此同时则不能通过终端进行复制粘贴操作。
```vim
set scrolljump=1
```
每次滚动只移动1行.
```vim
set scrolloff=2
```
光标移动到倒数第二行既开始滚动.
### vim 插件及配置
#### 1, vim-plug
这是个vim插件管理器，支持异步加载。这个比较新也好用. 但是网上的教程很没更新了用的是Vundle，但是强烈不推荐。
[vim-plug 地址](https://github.com/junegunn/vim-plug)
#### 2. 文件管理
[Nerd Tree](https://github.com/scrooloose/nerdtree) 用于文件树管理，很多IDE都带有的功能。方便在多个文件中编辑，强烈推荐。
#### 3. 编程辅助
[YouCompleteMe](https://github.com/valloric/youcompleteme)
用与代码补全，google工程师编写。比较困难配置, 速度倒是挺快的。  
[CompleteParameter](https://github.com/tenfyzhong/completeparameter)
参数补全，写完函数后补全相关参数。  
[ultisnips](https://github.com/sirver/ultisnips)
[vim-snippets](https://github.com/keelii/vim-snippets)
这两个插件可以省下很多操作,只用写一部分就能把框架搭好，基本上是为了节约生命而生的吧。  
#### 4. 主题外观
[solarized](https://github.com/lifepillar/vim-solarized8)
很好的一个主题,大家都在用，所以我就用了
[airline](https://github.com/vim-airline/vim-airline)
状态栏插件
[airline-themes](https://github.com/vim-airline/vim-airline-themes)
与之匹配的主题们
[rainbow_parentheses](https://github.com/kien/rainbow_parentheses)
可以让括号色彩斑斓，挺好用的。
## 后记
其他的配置和插件我都写在配置文件[传送门](../src/.vim/)需要自提哦。  
关于我的配置文件可能不是很完善，安装方法如下  
> .vimrc 是文件主配置文件将其放在家目录下即可。  
> 其余的直接将整个.vim 文件夹放入家目录  
> 其中包括  
> > ftplugin 是依据文件类型加载的配置文件。如python.vim
> > plugged 是插件安装目录 安装vim-plug时自动生成，这里没有放置。
> > .sess 用于存放当前会话, 可以理解为暂存当前内容。
> > .swp 临时文件夹。
> > .undo 用于保存撤销记录
至于插件的话安装好vim-plug后 用 :PlugInstall 一键安装。
