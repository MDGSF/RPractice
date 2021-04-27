# 向量支持标量运算
print(c(1.1, 1.2, 1.3) - 0.5) # 0.6 0.7 0.8

a = c(1, 2)
print(a^2) # 1 4


a = c(1, 3, 5, 2, 4, 6)

# sort 排序
print(sort(a)) # 1 2 3 4 5 6

# 反向输出
print(rev(a)) # 6 4 2 5 3 1

# 返回一个向量排序之后的下标向量
print(order(a)) # 1 4 2 5 3 6

print(a[order(a)]) # 1 2 3 4 5 6

