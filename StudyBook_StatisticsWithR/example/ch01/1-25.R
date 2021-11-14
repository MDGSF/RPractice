# 生成两个变量的二维列联表
example1_1 <- read.csv("C:/example/chap01/example1_1.csv"); example1_1
attach(example1_1) # 绑定数据
mytable1 <- table(态度, 社区); mytable1 # 生成两个变量的二维列联表
addmargins(mytable1) # 为列联表添加边际和
addmargins(prop.table(mytable1)*100) # 将列联表转换成百分比表
