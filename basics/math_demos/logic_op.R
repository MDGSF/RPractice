v <- c(3, 1, TRUE, 2 + 3i)
t <- c(4, 1, FALSE, 2 + 3i)
print(v & t)
print(v | t)
print(!v)

v <- c(3, 0, TRUE, 2 + 2i)
t <- c(1, 3, TRUE, 2 + 3i)
print(v && t)

v <- c(0, 0, TRUE, 2 + 2i)
t <- c(0, 3, TRUE, 2 + 3i)
print(v || t)
