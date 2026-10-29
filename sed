英文全称：stream editor

sed -n 5p filename(filename省略就会读取stdin的内容)
`-n`
sed 默认会把**每一行处理完之后打印输出**；`-n` 关闭默认打印，**只输出显式用 `p`（print）命令指定的行**。
2. `5p`

- `5`：地址，代表第 5 行
- `p`：print，打印匹配到的这一行

sed -i 's/#ReadKMsg=yes/ReadKMsg=yes/g' /etc/systemd/journald.conf
-i：直接修改源文件，而不是输出修改内容到终端
's/#ReadKMsg=yes/ReadKMsg=yes/g'：替换规则，将 #ReadKMsg=yes 替换为 ReadKMsg=yes
