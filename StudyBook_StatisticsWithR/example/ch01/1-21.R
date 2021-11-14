# 将短格式数据转换成长格式
table1_1 <- read.csv("C:/example/chap01/table1_1.csv"); table1_1 # 加载数据框
library(reshape2) # 加载 reshape2 包
# 融合 table1_1 与 id 变量，变量名="课程"，数值名="分数"
tab.long <- melt(table1_1, id.vars="姓名", variable.name="课程", value.name="分数")
tab.long # 显示 tab.long
