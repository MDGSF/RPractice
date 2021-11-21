# 绘制简单条形图

example2_1 <- read.csv("C:/example/chap02/example2_1.csv")
attach(example2_1) # 绑定数据框 example2_1
table1 <- table(社区); table2 <- table(性别); table3 <- table(态度) # 生成频数表

# 页面布局
layout(matrix(c(1, 2, 3, 3), 2, 2, byrow=TRUE))

# 设置图形边距和字体大小
par(mai=c(0.6, 0.6, 0.3, 0.1), cex=0.7, cex.main=1, font.main=1)

# 绘制性别条形图
barplot(
    table2,
    xlab="人数", # x轴标题
    ylab="性别", # y轴标题
    horiz=TRUE, # 水平排放
    density=30, # 设置填充密度
    angle=0, # 设置密度线的角度
    col=c("grey50", "grey80"), # 设置颜色
    border="black", # 设置边框颜色
    main="(a)水平条形图", # 设置标题
)

# 绘制态度条形图
barplot(
    table3,
    xlab="态度", # x轴标题
    ylab="人数", # y轴标题
    horiz=FALSE, # 垂直排放
    density=20, # 设置填充密度
    angle=90, # 设置密度线的角度
    col=c("red", "blue"), # 设置颜色
    border=c(2, 4), # 设置边框颜色
    main="(b)垂直条形图", # 设置标题
)

# 绘制社区条形图
barplot(
    table1,
    xlab="社区", # x轴标题
    ylab="人数", # y轴标题
    cex.names=1.2,
    cex.lab=1.2,
    col=c("#FC8D62", "#E78AC3", "#66C2A5", "#FFD92F"),
    main="(c)垂直条形图", # 设置标题
)
