# which 筛选数据
a = c(1, 2, 3, 4, 5)
b = a > 2
print(b) # FALSE FALSE TRUE TRUE TRUE
print(which(b)) # 3 4 5

# 筛选出 >= 60 并且 < 70 的数据
vector = c(10, 40, 78, 64, 53, 62, 69, 70)
print(vector[which(vector >= 60 & vector < 70)]) # 64 62 69

# all
print(all(c(TRUE, TRUE, TRUE))) # TRUE
print(all(c(TRUE, TRUE, FALSE))) # FALSE

# any
print(any(c(TRUE, FALSE, FALSE))) # TRUE
print(any(c(FALSE, FALSE, FALSE))) # FALSE

