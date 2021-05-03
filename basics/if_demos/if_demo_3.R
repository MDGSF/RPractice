x <- c("google", "runoob", "taobao")

if ("weibo" %in% x) {
  print("include weibo")
} else if ("runoob" %in% x) {
  print("include runoob")
} else {
  print("not found")
}
