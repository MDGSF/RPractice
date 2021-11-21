# 绘制扇形图

library(plotrix)
library(RColorBrewer)

example2_1 <- read.csv("C:/example/chap02/example2_1.csv")

tab <- table(example2_1$社区) # 生成频数表

name <- names(tab) # 设置名称向量

percent <- prop.table(tab) * 100 # 计算百分比

labs <- paste(name, " ", percent, "%", sep="") # 设置标签向量

fan.plot(
    tab,
    labels=labs,
    max.span=0.9*pi, # 设置扇形图最大跨度
    shrink=0.06, # 设置扇形图错开的具体
    radius=1.2, # 设置半径
    label.radius=1.4,
    ticks=200,
    col=c("#FB8072", "#FFFFB3", "deepskyblue", "pink")
)
