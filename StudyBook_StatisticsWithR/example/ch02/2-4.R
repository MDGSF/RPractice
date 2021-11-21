# 绘制脊形图

example2_1 <- read.csv("C:/example/chap02/example2_1.csv")

par(
    mfrow=c(1, 2), 
    mai=c(0.6, 0.6, 0.4, 0.4), 
    cex=0.7, 
    cex.main=1, 
    font.main=1)

# 设置调色板
palette <- rev(RColorBrewer::brewer.pal(4, "Reds"))

spineplot(
    性别~社区,
    data=example2_1,
    col=palette[1:2],
    xlab="社区",
    ylab="性别",
    main="(a)性别与社区"
)

spineplot(
    社区~态度,
    data=example2_1,
    col=palette,
    xlab="态度",
    ylab="社区",
    main="(b)社区与态度"
)
