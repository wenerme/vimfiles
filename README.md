我的 VIM 配置
-------------

基于 [spf13 v3.0](https://github.com/spf13/spf13-vim/tree/3.0) 进行的修改.

主要的修改

* 将选项的 `spf12_` 更改为 `option_`
* 修改以支持 cygwin
* 修改以支持 Windows

关于Windows的说明
---------------

如果你在Windows下使用vim,并且没有使用Windows的默认HOME目录,
想要更改加载位置时,设置 `_vimrc` 中的 `$HOME`,并
将 `_vimrc` 放到 vim 的安装目录,他会引导vim正确加载

.vimrc.* 配置文件
---------------

加载顺序

* .vimrc.before
* .vimrc.bundle
* .vimrc.bundle.local
* .vimrc.plugins 主要用于配置插件
* .vimrc.plugins.local
* .vimrc.keys 主要用于配置按键
* .vimrc.keys.local
* .vimrc.fork
* .vimrc.local
* .gvimrc.local

所有 `local` 后缀的,都是用于定制的,可任意删除或修改

选项
----

这些选项需要放在 `.vimrc.before`,以下说明省略 `option_` 前缀.

* no_autochdir 不使用自动切换当前目录
* no_restore_cursor 不恢复鼠标位置  
	恢复上次会话编辑时的鼠标位置
* no_views
* no_big_font 影响字体设置
* keep_trailing_whitespace 保留末尾空白

辅助函数
-------

判断平台

* WINDOWS
* LINUX
* OSX

杂项

* TrySource(filename) 尝试 Source 该文件.
