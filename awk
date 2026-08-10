awk 是一个文本处理工具
awk 并不是英文单词缩写，来自三位作者姓氏首字母：
Aho — Alfred Aho
Weinberger — Peter Weinberger
Kernighan — Brian Kernighan

-F（field separator）设置字段分隔符，后面跟一个引号内的字符，表示通过什么分隔，如-F ":"，就是通过冒号分隔
-v var=val              --assign=var=val，给变量赋值
'NR==line{print $2}'中NR是awk内部变量，满足条件就print $2，即输出第二个变量
函数最终标准输出（print/echo 的内容）才可以被 $(...)捕获
awk一般最后会跟输入文件，不用引号包裹，除非文件路径存储在变量中
