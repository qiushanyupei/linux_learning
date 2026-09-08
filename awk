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

awk '条件1{动作1} 条件2{动作2} ...'，默认只有一组；**如果省略 `{动作}`，条件为真就默认打印整行 `print $0`**（注意：动作和条件都在引号内，如果没有条件，条件默认为真，直接执行大括号中语句）
awk 里：**数字 0 代表假；非 0 数字代表真**
**`$0` = 当前完整的一整行记录（原始输入行）**；awk 读入一行文本，把整行原始内容存到 `$0`

awk '/^$/ {print NR}' file.txt
1. `/^$/`
awk 的**正则匹配模式**

- `^`：行开头
- `$`：行结尾
- `^$`：整行**没有任何字符，空行**
`NR`：Number of Record，**当前行号**
NF：**Number of Fields**当前行的字段/单词总数
awk 'NF' file.txt
awk内置print是自带换行符
END是特殊动作，代表读取完所有行后再执行后续动作
直接用的变量默认值为0
有内置的printf，和bash的printf含义不同。示例写法：awk '{printf "%s ", $1}'，%s是表示string
