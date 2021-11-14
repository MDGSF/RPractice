# 数据分组与生成频数分布表

library(DescTools)
example1_2 <- read.csv("C:/example/chap01/example1_2.csv"); example1_2

# 指定组距 15, 不含上限值
tab1 <- Freq(
    example1_2$销售额, 
    breaks=c(160, 175, 190, 205, 220, 235, 250, 265, 280), 
    right=FALSE)
tab1

tab2 <- data.frame(
    分组=tab1$level,
    频数=tab1$freq,
    频数百分比=tab1$perc*100,
    累计频数=tab1$cumfreq,
    累计百分比=tab1$cumperc*100)
print(tab2, digits=3)
