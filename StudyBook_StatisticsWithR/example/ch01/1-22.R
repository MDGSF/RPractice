# 将短格式数据转换成长格式
table1_3 <- read.csv("C:/example/chap01/table1_3.csv"); table1_3 # 加载数据框
library(reshape2) # 加载 reshape2 包
tab.long <- melt(table1_3, variable.name="课程", value.name="分数")
tab.long # 显示 tab.long
