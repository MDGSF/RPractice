# 读取 csv 格式数据

# 读取含有标题的 csv 格式数据
table1_1 <- read.csv("C:/example/chap01/table1_1.csv")
table1_1

# 读取不含有标题的 csv 格式数据
table1_1 <- read.csv("C:/example/chap01/table1_1.csv", header=FALSE)
table1_1
