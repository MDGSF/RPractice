sink("r_test.txt", split=TRUE) #控制台和文件同时输出
for (i in 1:5)
  print(i)
sink() # 取消输出到文件

sink("r_test.txt", append=TRUE) #控制台不输出，追加写入文件
print("RRR")
