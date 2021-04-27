# 转换为大写
print(toupper("Rust")) 

# 转换为小写
print(tolower("Rust"))

# 统计字节长度
print(nchar("中文", type="bytes")) # 6

# 统计字符数量
print(nchar("中文", type="char")) # 2

# 截取字符串，从 2 到 5
print(substr("123456789", 2, 5)) # "2345"

# 截取字符串，从 5 到结束
print(substring("123456789", 5)) # "56789"

# 字符串转换为数字
print(as.numeric("12")) # 12

# 数字转换为字符串
print(as.character(12.34)) # "12.34"

# 切割字符串
print(strsplit("2021;04;27", ";"))

# 替换字符串
print(gsub("/", "-", "2021/04/27"))
