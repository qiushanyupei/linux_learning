英文全称：stream editor

sed -n 5p filename(filename省略就会读取stdin的内容)
`-n`
sed 默认会把**每一行处理完之后打印输出**；`-n` 关闭默认打印，**只输出显式用 `p`（print）命令指定的行**。
2. `5p`

- `5`：地址，代表第 5 行
- `p`：print，打印匹配到的这一行
