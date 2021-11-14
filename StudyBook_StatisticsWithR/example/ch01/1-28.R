# 将列联表转换成原始数据框

example1_1 <- read.csv("C:/example/chap01/example1_1.csv"); example1_1
library(DescTools)
mytable <- ftable(example1_1) # 生成多维列联表
df <- Untable(mytable) # 将列联表转换成原始数据框
head(df, 3)
tail(df, 3)
