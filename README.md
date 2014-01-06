
我的 VIM 配置
-------------

基于 [spf13 v3.0](https://github.com/spf13/spf13-vim/tree/3.0) 进行的修改.


安装
----

1. 下载vimfiles  
    * `git clone https://github.com/wenerme/vimfiles ~/.vim`
    * 或者 下载[zip](https://github.com/gmarik/vundle/archive/master.zip)
    ,解压到你想放的地方
2. 搭建vundle  
    `$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle`
3. 对于 Windows 用户,将 `_vimrc` 放到你安装 vim 的目录中哦  
    例如你的 vim 安装文件夹为 `C:\vim\vim74\vim.exe`,
    则需要将 `_vimrc` 放到 `C:\vim` 即可
4. 打开 vim, 运行 `:BundleInstall` 安装 bundles,完成后从新打开vim即可.
5. 可能你还想使用一个支持Powerline的字体,我使用的是  
    [AndaleMono-Powerline](https://github.com/wenerme/dotfiles/tree/master/.font#andalemono-powerline)

主要的修改
---------

* 修改以支持 cygwin
* 修改以支持 Windows
* 将选项的 `spf12_` 更改为 `option_`


关于Windows的说明
---------------

如果你在Windows下使用vim,并且没有使用Windows的默认HOME目录(`C:\User\{UserName}`),

* 设置 `_vimrc` 中的 `$HOME` 为你的 HOME 目录(你放`.vim/`的地方).
* 添加 `curl` 和 `git` 到 `$PATH



如果你想要将 VIM 添加到右键中,可以使用这个小脚本 [vim_context_menu](https://github.com/wenerme/vim.ContextMenu).

.vimrc.* 配置文件
---------------

加载顺序

* .vimrc.before
* .vimrc.plugins 主要用于配置插件
	* .vimrc.bundle 如果检测到 vundle,则会加载
	* .vimrc.bundle.local
* .vimrc.plugins.local
* .vimrc.keys 主要用于配置按键
* .vimrc.keys.local
* .vimrc.fork
* .vimrc.local
* .gvimrc.local

所有 `local` 后缀的,都是用于定制的,可任意删除或修改

选项
----

这些选项需要放在 `.vimrc.before` 中才会生效,以下说明省略 `option_` 前缀.

* no_autochdir 不使用自动切换当前目录
* no_restore_cursor 不恢复鼠标位置  
	恢复上次会话编辑时的鼠标位置
* no_views
* no_big_font 影响字体设置
* keep_trailing_whitespace 保留末尾空白  
    默认情况下,加载 `c,cpp,java,go,php,javascript,python,twig,xml,yml` 文件时,
    会自动删除行尾空白
* leader 设置 <Leader>, 默认 `,`
* localleader 默认 `_`
* no_easy_window_switch 不启用简单的窗口切换操作  
	使用 `<C-J/K/L/H>` 来移动窗口焦点
* no_easy_tab_switch 不启用简单的tab切换操作  
	使用 `<C-Tab>/<C-S-Tab>` 来切换Tab
* no_easy_buffer_switch 不启用简单的buffer切换操作  
    * 启用后,如果只有一个 TAB,且没有设置`no_easy_tab_switch`,
    则会使用 切换 Tab 的操作来切换Buffer  
    * 使用 `<Leader>h/l` 来循环 buffer  
    `<Leader>j/k` 为最后一个和第一个
* no_windows_like 不使用和微软类似的操作键  
	主要有 `<C-S>,<C-C>,<C-V>,<C-Z>` 
* clear_search_higjtlight 使用 `<Learder>/` 清除搜索高亮  
	默认为切换是否高亮
* use_powerline_symbols  
    如果未设置,则保持默认的符号  
    可能的值为 new , old, unicode 的组合  
    分别为使用 新的或旧的 powerline 字符,根据字体决定  
    不管使用 new 或 old,都建议包含 unicode

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
