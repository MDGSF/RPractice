# 绘制帕累托图

example2_1 <- read.csv("C:/example/chap02/example2_1.csv")

# 设置图形边距
par(mai=c(0.7, 0.7, 0.2, 0.7), cex=0.7)

# 生成一维表并将频数降序排列
x <- sort(table(example2_1$社区), decreasing=TRUE)

# 设置调色板
palette <- RColorBrewer::brewer.pal(4, "Blues")

# 绘制条形图
bar <- barplot(
    x,
    xlab="社区",
    ylab="频数",
    col=rainbow(4),
    ylim=c(0, 1.2*max(x))
)

# 为条形图添加频数标签
text(bar, x, labels=x, pos=3, col="black")

# 计算累计频数
y <- cumsum(x) / sum(x)

# 绘制一幅新图加在现有的图形上
par(new=T)

# 绘制累积频数折线
plot(
    y,
    type="b",
    pch=15,
    axes=FALSE,
    xlab='',
    ylab='',
    main=''
)

# 在第 4 个边增加坐标轴
axis(side=4)

# 添加坐标轴标签
mtext("累积频率", side=4, line=3, cex=0.8)

# 添加注释文本
text(labels="累积分布曲线", x=3, y=0.92, cex=1)
