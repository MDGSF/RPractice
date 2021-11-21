# 绘制饼图

library("plotrix")

example2_1 <- read.csv("C:/example/chap02/example2_1.csv")

par(
    mfrow=c(1, 2),
    mai=c(0.1, 0.4, 0.1, 0.4), # c(bottom, left, top, right)
    cex=0.7)

# 生成频数表
tab <- table(example2_1$社区)

# 设置名称向量
name <- names(tab)

# 计算百分比
percent <- prop.table(tab) * 100

# 设置标签向量
labs <- paste(name, " ", percent, "%", sep="")

pie(
    tab,
    labels=labs,
    init.angle=90,
    radius=1,
    main="(a)普通饼图"
)

plotrix::pie3D(
    tab,
    labels=labs,
    explode=0.1,
    labelcex=0.7,
    main="(b)3D饼图"
)


