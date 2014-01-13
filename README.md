
我的 VIM 配置
-------------

基于 [spf13 v3.0](https://github.com/spf13/spf13-vim/tree/3.0) 进行的修改.


安装
----

0. 准备 [vim](http://www.vim.org/download.php)
    * Windows 下最好下载 [OLE 版本](ftp://ftp.vim.org/pub/vim/pc/gvim74ole.zip)
    ,有很多其他的特性支持
    * 下载[运行时文件](ftp://ftp.vim.org/pub/vim/pc/vim74rt.zip)
    * 解压到你想安装的地方

1. 下载vimfiles  
    * `git clone https://github.com/wenerme/vimfiles ~/.vim`
    * 或者 下载[zip](https://github.com/gmarik/vundle/archive/master.zip)
    ,解压到你想放的地方

2. 准备vundll
    * `$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
    * 或者 下载 [zip](https://github.com/gmarik/vundle/archive/master.zip)
    , 解压到 `~/.vim/bundle/vundle`

3. 对于 Windows 用户,请先阅读[关于Windows的说明](关于windows的说明)
4. 打开 vim, 运行 `:BundleInstall` 安装 bundles,完成后从新打开vim即可.
5. 可能你还想使用一个支持Powerline的字体,我使用的是  
    [AndaleMono-Powerline](https://github.com/wenerme/dotfiles/tree/master/.font#andalemono-powerline)

主要的修改
---------

* 修改以支持 Cygwin
* 修改以支持 Windows
* 将选项的 `spf12_` 更改为 `option_`
* 修改安装方式,不需要预先下载
* 修改 Bundle 的载入方式,会自动检测环境中的Bundle进行设置,
    即便是一个 Bundle 都没有,也是可以使用的.


关于Windows的说明
---------------

在 Windows 下需要进行的准备工作

* 将 `_vimrc` 放到你安装 vim 的目录中,  
    例如你的 vim 安装文件夹为 `C:\vim\vim74\vim.exe`,
    则需要将 `_vimrc` 放到 `C:\vim` 即可
* 设置 `_vimrc` 中的 `$HOME` 为你的 HOME 目录(你放`.vim/`的地方).
* 添加 `curl` 和 `git` 到 `$PATH
* 如果在 Cygwin 下使用,设置 `g:option_root_dir` 为 cygwin 的根目录.



如果你想要将 VIM 添加到右键中,可以使用这个小脚本 [vim_context_menu](https://github.com/wenerme/vim.ContextMenu).

.vimrc.* 配置文件
---------------

加载顺序

* .vimrc.before
* .vimrc.keys 主要用于配置按键
    * .vimrc.keys.local
* .vimrc.plugins 主要用于配置插件
    * .vimrc.bundle 如果检测到 vundle,则会加载
        * .vimrc.bundle.local
    * .vimrc.plugins.local
* .vimrc.fork
* .vimrc.local
* .gvimrc.local

所有 `local` 后缀的,都是用于定制的,可任意删除或修改

选项
----

这些选项需要放在 `.vimrc.before` 中才会生效,以下说明省略 `option_` 前缀.

### no_autochdir

不使用自动切换当前目录

### no_restore_cursor

* 不恢复鼠标位置
* 恢复上次会话编辑时的鼠标位置

* no_views

* no_big_font 影响字体设置

### keep_trailing_whitespace 保留末尾空白

默认情况下,加载 `c,cpp,java,go,php,javascript,python,twig,xml,yml` 文件时,
会自动删除行尾空白

### leader 
设置 <Leader>, 默认 `,`

### localleader 
默认 `_`
### no_easy_window_switch

不启用简单的窗口切换操作

使用 `<C-J/K/L/H>` 来移动窗口焦点

### no_easy_tab_switch & no_easy_buffer_switch
不启用简单的tab切换操作
使用 `<C-Tab>/<C-S-Tab>` 来切换Tab

* 不启用简单的buffer切换操作  
    * 启用后,如果只有一个 TAB,且没有设置`no_easy_tab_switch`,
    则会使用 切换 Tab 的操作来切换Buffer  
    * 使用 `<Leader>h/l` 来循环 buffer  
    `<Leader>j/k` 为最后一个和第一个
### no_windows_like
    不使用和微软类似的操作键
    主要有 `<C-S>,<C-C>,<C-V>,<C-Z>`
### clear_search_higjtlight

使用 `<Learder>/` 清除搜索高亮
默认为切换是否高亮

### use_powerline_symbols

* 如果未设置,则保持默认的符号
* 可能的值为 new , old, unicode 的组合
* 分别为使用 新的或旧的 powerline 字符,根据字体决定
* 不管使用 new 或 old,都建议包含 unicode

### with_bundles

* 默认值 ['general']

主要用于在启动时加载一系列的 插件,类似于插件套装.

可以这样添加
`let g:option_with_bundles += 'programming'`

可能的值是 `.vimrc.bundles.{suit}` 这样的文件名中的 `{suit}` 部分.

例如,如果你有 `.vimrc.bundles.js` 在你的 `~/.vim/` 下,则
`let g:option_with_bundles=['js']` 则会加载该文件.

注意: `.vimrc.bundles.local` 会自动加载

注意
----

* 配置里粘贴板的寄存器为 `*`
* <Leader> 默认设置为 `,`,因为这个键在不一样的键盘上位置是固定的


辅助函数
-------

判断平台

* WINDOWS
* LINUX
* OSX

杂项

* TrySource(filename) 尝试 Source 该文件.
* BundlesFor(name) 和 [with_bundles](#with-bundles) 选项操作相同

TODO
----

* 完善 README
    * 说明选项
    * 说明按键
    * 添加的全局函数说明
* 添加Bundle套件
    * 添加编程通用的,例如`neocomplete`,`tcomments`等
    * 添加 `NERDTree`
    * 为一些插件添加中文文档, [vimcn](https://github.com/vimcn)
* 实现 Cygwin 下根目录的问题.
