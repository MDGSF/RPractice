# 数据框排序
table1_1 <- read.csv("C:/example/chap01/table1_1.csv") # 加载数据
table1_1
library(dplyr) # 加载包
arrange(table1_1, 姓名) # 按姓名升序对整个数据框排序
arrange(table1_1, desc(数学)) # 按数学分数降序对整个数据框排序
