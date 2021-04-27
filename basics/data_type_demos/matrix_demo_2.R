# 矩阵相乘
m1 = matrix(c(1, 2), 1, 2)
m2 = matrix(c(3, 4), 2, 1)
print(m1 %*% m2)

# 逆矩阵
A = matrix(c(1, 3, 2, 4), 2, 2)
print(solve(A))

# apply
print(apply(A, 1, sum)) # 第二个参数=1表示按行操作
print(apply(A, 2, sum)) # 第二个参数=2表示按列操作
