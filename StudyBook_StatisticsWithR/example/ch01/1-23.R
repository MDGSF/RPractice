# 将短格式数据转换成长格式

library(tidyr) # 加载 tidyr 包

table1_1 <- read.csv("C:/example/chap01/table1_1.csv"); table1_1 # 加载数据框
# key 为融合后的变量名称
df1 <- gather(table1_1, key="课程", value="分数", "统计学", "数学", "经济学")
df1

table1_3 <- read.csv("C:/example/chap01/table1_3.csv"); table1_3 # 加载数据框
df2 <- gather(table1_3, key="课程", value="分数", "统计学", "数学", "经济学")
df2
