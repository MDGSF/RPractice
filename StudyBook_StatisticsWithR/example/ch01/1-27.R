# 生成多维列联表

example1_1 <- read.csv("C:/example/chap01/example1_1.csv"); example1_1
library(vcd)
structable(性别+态度~社区, data=example1_1)
