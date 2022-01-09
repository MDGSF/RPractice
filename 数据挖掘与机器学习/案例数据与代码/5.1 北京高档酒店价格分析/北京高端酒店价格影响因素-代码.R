# 安装所需要的包
library("car")
library("readr")
library("corrplot")

# 设置工作路径
setwd("D:\\Study\\数据思维实践\\案例数据与代码\\5.1 北京高档酒店价格分析")

# 数据清洗部分
hotel <- read_csv("hoteldata.csv")

# 数据变量命名
names(hotel) <- c(
  "hotel_name",       # 酒店名称
  "area",             # 酒店地区
  "site",             # 酒店地址
  "hyg_grade",        # 卫生评分
  "ser_grade",        # 服务评分
  "fac_grade",        # 设施评分
  "loc_grade",        # 位置评分
  "evaluate",         # 评价数
  "time",             # 装修时间
  "type",             # 房间类型
  "price",            # 酒店房价
  "lon",              # 经度
  "lat",              # 纬度
  "company",          # 公司
  "trip",             # 出行住宿
  "school"            # 校园生活
  )

# 酒店因素评分
# 为了避免多重共线性
hotel$total_grade <- (hotel$hyg_grade+hotel$ser_grade+hotel$fac_grade+hotel$loc_grade)/4
# 对装修时间进行处理
hotel$timeCut <- cut(hotel$time, c(0,2015.5,Inf), c("旧装修", "新装修"))
# 把其他地区作为基准组
hotel$area <- factor(as.character(hotel$area), levels = c("其他城区", "东城区", "朝阳区", "海淀区"))


# 1x1 画布
par(mfrow = c(1,1))
# 因变量分布直方图
hist(
  x = hotel$price,
  xlab = "酒店房价分布直方图",  # x轴标签
  ylab = "频数",               # y轴标签
  ylim = c(0, 300),            # y轴范围
  col = "lightsteelblue4",     # 颜色
  main = ""                    # 标题为空
)


# 酒店房价的中位数
median(hotel$price)
# 酒店房价的平均数
mean(hotel$price)


# 1x2 画布
par(mfrow = c(1, 2))
# 房价类型对酒店房价的影响
# 房间类型分组（标准间、商务间、豪华套间）
hotel$type = factor(hotel$type, levels = c("标准间", "商务间", "豪华套间"))
# 画箱线图
boxplot(log(hotel$price)~(hotel$type),
        col = "lightsteelblue4",                      # 颜色
        ylab = "酒店房价（取对数）",                    # y轴标签
        xlab = "酒店类型",                             # x轴标签
        names = c("标准", "商务", "豪华"))              # 分组命名

# 装修时间分组对酒店价格的影响
# 装修时间分组（2016年、2017年为新装修、2015年及以前为旧装修）
timeCut <- cut(hotel$time, c(0,2015.5,Inf))
# 画箱线图
boxplot(log(hotel$price)~timeCut,
        col = c("lightsteelblue4"),       # 颜色
        ylab = "酒店房价（取对数）",        # y轴标签
        xlab = "装修时间",                 # x轴标签
        names = c("旧装修", "新装修"))      # 分组命名


# 1x1 画布
par(mfrow = c(1,1))
# 构造一个数据框
grade <- data.frame(hotel$hyg_grade, hotel$ser_grade, hotel$fac_grade, hotel$loc_grade)
# 命名数据
names(grade) <- c("卫生", "服务", "设施", "位置")
# 计算相关系数矩阵
cor_grade <- cor(grade)
corrplot(
  cor_grade,
  col = NULL,                    
  type = "full",                 # 图形为全部填充
  order = "AOE",                 # 排序安装特征向量角序(AOE)方式
  method = "color",              # 颜色填充方式
  tl.col = "lightsteelblue4",    # 字体颜色
  tl.cex = 1,                    # 字体大小
  cl.pos = "n",                  # 图例（位置），不需要图例
  addCoef.col = "grey"           # 系数颜色
)


# 评分因素箱线图
# 1x2 画布
par(mfrow = c(1,2))
# 酒店综合品质分组对酒店房价的影响
# 酒店综合品质的分组（以 4.5 分组）
total_gradeCut <- cut(hotel$total_grade, c(0, 4.5, Inf)) # 分组函数
# 画箱线图
boxplot(
  log(hotel$price) ~ total_gradeCut,
  col = "lightsteelblue4",                      # 颜色
  ylab = "酒店房价（取对数）",                    # y轴标签
  xlab = "综合评分",                             # x轴标签
  names = c("低评分", "高评分")                   # 分组（4.5 分以上为高评分，4.5 分以下为低评分
)

# 评价数分组对酒店房价的影响
# 评价数的分组（以中位数分组）
evaluateCut <- cut(hotel$evaluate, c(0, median(hotel$evaluate), Inf))
# 画箱线图
boxplot(
  log(hotel$price)~evaluateCut,
  col = "lightsteelblue4",                      # 颜色
  ylab = "酒店房价（取对数）",                    # y轴标签
  xlab = "评价数",                               # x轴标签
  names = c("低评价数", "高评价数")               # 分组
)


# 计算卫生评分均值
mean(hotel$hyg_grade)

# 计算服务评分均值
mean(hotel$ser_grade)

# 计算设施评分均值
mean(hotel$fac_grade)

# 计算位置评分均值
mean(hotel$loc_grade)


# 建立对数线性回归模型
lm_price <- lm(
  log(price) ~ area + type + timeCut + 
  evaluate + total_grade + school + 
  company + trip,
  data = hotel)
# AIC 方法进行变量选择
lm_price <- step(lm_price)
# 输出模型结果
summary(lm_price)


# 对数回归模型检验
# 2x2 画布
par(mfrow = c(2, 2))
# 模型诊断，包括残差图，QQ图，cook距离
plot(
  lm_price,
  which = c(1, 2, 3, 4))

# 计算对数回归模型的方差膨胀因子
round(vif(lm_price), 2)








