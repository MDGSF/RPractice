# 向量中常会用到 NA 和 NULL ，这里介绍一下这两个词语与区别：
# NA 代表的是"缺失"，NULL 代表的是"不存在"。
# NA 缺失就像占位符，代表这里没有一个值，但位置存在。
# NULL 代表的就是数据不存在。

print(length(c(NA, NA, NULL))) # 2

print(c(NA, NA, NULL, NA)) # NA NA NA

