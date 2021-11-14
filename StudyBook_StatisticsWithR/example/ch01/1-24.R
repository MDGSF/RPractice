# 生成单变量频数分布表
example1_1 <- read.csv("C:/example/chap01/example1_1.csv"); example1_1
mytable <- table(example1_1$社区); mytable # 生成频数表
prop.table(mytable)*100 # 将频数表转换成百分比表
