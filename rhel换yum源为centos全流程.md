1、更改repo文件看https://zhuanlan.zhihu.com/p/618545145<br>
2、基本流程看https://developer.aliyun.com/article/1414824<br>
一、删除系统自带的rpm文件<br>
二、下载安装新的yum包<br>
三、强制安装<br>
四、重命名官方repo（即yum源），改为bak文件格式，使用yum时不会读取<br>
五、在指定etc目录下下载centosOS的yum源<br>
六、统一替换其中有关版本的描述，$releaser改成对应的版本号<br>
七、最后刷新一下yum<br>
yum clean all作用：清除所有 YUM 缓存文件（释放空间 + 解决出错）<br>
yum makecache作用：重新生成本地软件包的缓存索引（加快搜索）<br>
yum update作用：更新所有已安装的软件包到最新版本<br>
