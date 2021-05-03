# format(x, digits, nsmall, scientific, width, justify = c("left", "right", "centre", "none")) 
# 参数说明：
# x ： 输入对向量
# digits ： 显示的位数
# nsmall ： 小数点右边显示的最少位数
# scientific ： 设置科学计数法
# width ： 通过开头填充空白来显示最小的宽度
# justify：设置位置，显示可以是左边、右边、中间等。


# 显示 9 位，最后一位四舍五入
result <- format(23.123456789, digits = 9)
print(result)

# 使用科学计数法显示
result <- format(c(6, 13.14521), scientific = TRUE)
print(result)

# 小数点右边最小显示 5 位，没有的以 0 补充
result <- format(23.47, nsmall = 5)
print(result)

# 将数字转为字符串
result <- format(6)
print(result)

# 宽度为 6 位，不够的在开头添加空格
result <- format(13.7, width = 6)
print(result)

# 左对齐字符串
result <- format("Runoob", width = 9, justify = "l")
print(result)

# 居中显示
result <- format("Runoob", width = 10, justify = "c")
print(result)
