# 绘制环形图和饼环图

library(ggiraphExtra)
library(ggplot2)
library(gridExtra)

example2_1 <- read.csv("C:/example/chap02/example2_1.csv")

p1 <- ggDonut(
    example2_1,
    aes(donuts=社区),
    colour="white",
    xmin=2,
    xmax=4,
    title="(a)环形图"
)

p2 <- ggPieDonut(
    data=example2_1,
    aes(pies=社区, donuts=态度),
    title="(b)饼环图"
)

grid.arrange(p1, p2, ncol=2)
