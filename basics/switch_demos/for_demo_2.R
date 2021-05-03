v <- LETTERS[1:6]
for (i in v) {
  if (i == "D") {
    next # 类似于continue
  }
  print(i)
}
