# 数据抽样

N <- 1:20 # 1 ~ 20 的数值向量
n1 <- sample(N, size=10); n1 # 无放回抽取 10 个数据
n2 <- sample(N, size=10, replace=TRUE); n2 # 有放回抽取 10 个数据

Ncols <- c("black", "red", "green", "blue", "yellow") # 5 中不同的颜色向量
ncols <- sample(Ncols, size=8, replace=TRUE); ncols # 有放回抽取 8 个颜色
