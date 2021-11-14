# 将数据框中的变量转换为向量

table1_1 <- read.csv("C:/example/chap01/table1_1.csv"); table1_1 # 加载数据框
vector1 <- as.vector(table1_1$统计学); vector1 # 将统计学分数转换成向量
vector2 <- as.vector(c(table1_1$统计学, table1_1$数学)); vector2 #将统计学和数学合并转换成向量
vector3 <- as.vector(as.matrix(table1_1[,2:4])); vector3 # 将数据框转换为向量
