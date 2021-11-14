# 查看数据框
table1_1 <- read.csv("C:/example/chap01/table1_1.csv") # 加载数据框
table1_1 # 显示 table1_1 中的数据
head(table1_1, 3) # 显示前 3 行 
tail(table1_1, 3) # 显示后 3 行

# 查看数据框的行数和列数
nrow(table1_1) # 查看 table1_1 的行数
ncol(table1_1) # 查看 table1_1 的列数
dim(table1_1) # 同时查看行数和列数

# 查看数据的类型
class(table1_1)

# 查看数据的结构
str(table1_1)
# 输出：
#'data.frame':   5 obs. of  4 variables:
# $ 姓名  : chr  "刘文涛" "王宇翔" "田思雨" "徐丽娜" ...
# $ 统计学: int  68 85 74 88 63
# $ 数学  : int  85 91 74 100 82
# $ 经济学: int  84 63 61 49 89
# 解释：
# 有 4 个变量，每个变量有 5 个观测值
