vector = c(1, 2, 3, 4, 5, 6)

m1 = matrix(vector, 2, 3)
print(m1)

m2 = matrix(vector, 2, 3, byrow=TRUE)
print(m2)

print(m2[1,1]) # 第1行，第1列
print(m2[1,3]) # 第1行，第3列

colnames(m2) = c("x", "y", "z")
rownames(m2) = c("a", "b")
print(m2)
