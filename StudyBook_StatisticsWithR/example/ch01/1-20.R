# 将数据框转换为矩阵

# 将数据框 table1_1 转换为矩阵 mat
table1_1 <- read.csv("C:/example/chap01/table1_1.csv"); table1_1 # 加载数据框
mat <- as.matrix(table1_1[,2:4]); mat # 将 table1_1 中的第 2 列到第 4 列转换成矩阵 mat
rownames(mat) = table1_1[,1] # 矩阵的行名为 table1_1 第 1 列的名称
mat
