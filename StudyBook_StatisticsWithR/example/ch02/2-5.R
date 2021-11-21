# 绘制马赛克图

example2_1 <- read.csv("C:/example/chap02/example2_1.csv")

par(
    mai=c(0.3, 0.3, 0.2, 0.1), 
    cex=0.7, 
    cex.main=0.8)

mosaicplot(
    ~性别+社区+态度,
    data=example2_1,
    col=c("#E41A1C", "#377EB8"),
    cex.axis=0.8,
    off=5,
    main=""
)
