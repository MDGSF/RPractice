# 生成多维列联表

# 生成三维频数表
example1_1 <- read.csv("C:/example/chap01/example1_1.csv"); example1_1
mytable2 <- ftable(example1_1, row.vars=c("性别", "态度"), col.vars="社区")
mytable2

# 为列联表添加边际和
ftable(addmargins(table(example1_1$性别, example1_1$态度, example1_1$社区)))
