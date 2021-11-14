# 数据框合并
table1_1 <- read.csv("C:/example/chap01/table1_1.csv")
table1_2 <- read.csv("C:/example/chap01/table1_2.csv")
mytable <- rbind(table1_1, table1_2) # 按行合并数据框
mytable
