# 数据分组与生成频数分布表

# 使用 Freq 函数的默认分组，含上限值
library(DescTools)
example1_2 <- read.csv("C:/example/chap01/example1_2.csv"); example1_2
tab <- Freq(example1_2$销售额); tab
