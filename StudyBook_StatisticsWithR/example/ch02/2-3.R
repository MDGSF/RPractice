# 绘制复式条形图

example2_1 <- read.csv("C:/example/chap02/example2_1.csv")
attach(example2_1) # 绑定数据框 example2_1

# 二维表
tab1 <- table(性别, 社区); tab2 <- table(性别, 态度); tab3 <- table(社区, 态度)

# 加载包
library(DescTools)

# par(mfrow=c(2, 2), mai=c(0.55, 0.6, 0.6, 0.1), cex=0.7, cex.main=1, font.main=1)
par(
    mfrow=c(2, 2), 
    mai=c(0.55, 0.6, 0.6, 0.1), 
    cex=0.7, 
    cex.main=1, 
    font.main=1)

b1 <- barplot(
    tab1,
    beside=TRUE,
    xlab="社区",
    ylab="人数",
    main="(a)垂直并列",
    col=c("#66C2A5", "#FC8D62"),
    legend=rownames(tab1),
    args.legend=list(
        x=12, 
        y=19,
        ncol=2,
        cex=0.7,
        box.col="grey80")
)

# 添加频数标签
BarText(
    tab1,
    b=b1,
    beside=TRUE,
    cex=1
)

b2 <- barplot(
    tab2,
    beside=TRUE,
    horiz=TRUE,
    xlab="人数",
    ylab="态度",
    main="(a)水平并列",
    col=c("#66C2A5", "#FC8D62"),
    legend=rownames(tab2),
    args.legend=list(
        x=9.2, 
        y=7,
        ncol=2,
        cex=0.7,
        box.col="grey80")
)

# 添加频数标签
BarText(
    tab2,
    b=b2,
    beside=TRUE,
    horiz=TRUE,
    cex=1
)

b3 <- barplot(
    tab3,
    xlab="态度",
    ylab="人数",
    main="(a)垂直堆叠",
    col=c("#FC8D62", "#E78AC3", "#66C2A5", "#FFD92F"),
    legend=rownames(tab3),
    args.legend=list(
        x=1.32, 
        y=50,
        ncol=2,
        cex=0.7,
        box.col="grey80")
)

# 添加频数标签
BarText(
    tab3,
    b=b3,
    cex=1
)

b4 <- barplot(
    tab3,
    horiz=TRUE,
    xlab="人数",
    ylab="态度",
    main="(a)水平堆叠",
    col=c("#FC8D62", "#E78AC3", "#66C2A5", "#FFD92F"),
    legend=rownames(tab3),
    args.legend=list(
        x=47, 
        y=2.8,
        ncol=4,
        cex=0.7,
        box.col="grey80")
)

# 添加频数标签
BarText(
    tab3,
    b=b4,
    horiz=TRUE,
    col="black",
    cex=1
)
