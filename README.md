�ҵ� VIM ����
-------------

���� [spf13 v3.0](https://github.com/spf13/spf13-vim/tree/3.0) ���е��޸�.

��װ `git clone https://github.com/wenerme/vimfiles ~/.vim`


��Ҫ���޸�
---------

* �޸���֧�� cygwin
* �޸���֧�� Windows
* ��ѡ��� `spf12_` ����Ϊ `option_`


����Windows��˵��
---------------

�������Windows��ʹ��vim,����û��ʹ��Windows��Ĭ��HOMEĿ¼(C:\User\{UserName}),
��Ҫ���ļ���λ��ʱ,���� `_vimrc` �е� `$HOME`,��
�� `_vimrc` �ŵ� vim �İ�װĿ¼,��������vim��ȷ����

.vimrc.* �����ļ�
---------------

����˳��

* .vimrc.before
* .vimrc.plugins ��Ҫ�������ò��
	* .vimrc.bundle �����⵽ vundle,������
	* .vimrc.bundle.local
* .vimrc.plugins.local
* .vimrc.keys ��Ҫ�������ð���
* .vimrc.keys.local
* .vimrc.fork
* .vimrc.local
* .gvimrc.local

���� `local` ��׺��,�������ڶ��Ƶ�,������ɾ�����޸�

ѡ��
----

��Щѡ����Ҫ���� `.vimrc.before` �вŻ���Ч,����˵��ʡ�� `option_` ǰ׺.

* no_autochdir ��ʹ���Զ��л���ǰĿ¼
* no_restore_cursor ���ָ����λ��  
	�ָ��ϴλỰ�༭ʱ�����λ��
* no_views
* no_big_font Ӱ����������
* keep_trailing_whitespace ����ĩβ�հ�
* leader ���� <Leader>, Ĭ�� `,`
* localleader Ĭ�� `_`
* no_easy_window_switch �����ü򵥵Ĵ����л�����  
	ʹ�� `<C-J/K/L/H>` ���ƶ����ڽ���
* no_easy_tab_switch �����ü򵥵�tab�л�����  
	ʹ�� `<C-Tab>/<C-S-Tab>` ���л�Tab
* no_windows_like ��ʹ�ú�΢�����ƵĲ�����  
	��Ҫ�� `<C-S>,<C-C>,<C-V>,<C-Z>` 
* clear_search_higjtlight ʹ�� `<Learder>/` �����������  
	Ĭ��Ϊ�л��Ƿ����

ע��
----

* ������ճ����ļĴ���Ϊ `*`


��������
-------

�ж�ƽ̨

* WINDOWS
* LINUX
* OSX

����

* TrySource(filename) ���� Source ���ļ�.
