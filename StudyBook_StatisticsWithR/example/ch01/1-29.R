# 将列联表转换成带有类别频数的数据框

example1_1 <- read.csv("C:/example/chap01/example1_1.csv"); example1_1
tab <- ftable(example1_1) # 生成列联表
df <- as.data.frame(tab); df # 将列联表转换成带有类别频数的数据框
