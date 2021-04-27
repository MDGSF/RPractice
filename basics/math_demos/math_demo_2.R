# 冒号运算符
v = 1:10
print(v) # 1  2  3  4  5  6  7  8  9 10

# %in% 判断数字是否在向量 v 中
v1 <- 3
v2 = 15
print(v1 %in% v)
print(v2 %in% v)

# %*% 矩阵与它的转置矩阵相乘
M = matrix( c(2, 6, 5, 1, 10, 4), nrow = 2, ncol = 3, byrow = TRUE)
t = M %*% t(M)
print(t)
