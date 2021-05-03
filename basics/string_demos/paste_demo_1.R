# paste(..., sep = " ", collapse = NULL)

a = "Google"
b = "Runoob"
c = "Taobao"

print(paste(a, b, c))
print(paste(a, b, c, sep = "-"))

print(paste(letters[1:6], 1:6, sep = "", collapse = "="))

print(paste(letters[1:6], 1:6, collapse = "."))
