#!/usr/bin/env python
# -*- coding: UTF-8 -*-

import os

def changeFileFromGB2312ToUTF8(filename):
  try:
    print('start change file', filename)

    file = open(filename, mode = 'r', encoding = 'gb2312')
    data = file.read()
    file.close()

    os.remove(filename)

    file = open(filename, mode = 'w', encoding = 'utf-8')
    file.write(data)
    file.close()
  except:
    print('change file failed, ', filename)
  else:
    print('change file success, ', filename)


def changeDirectoryCSVFromGB2312ToUTF8(directory):
  files = os.listdir(directory)
  for f in files:
    if f[0] == '.':  # 隐藏文件
      continue
    fWithPath = os.path.join(directory, f)
    if os.path.isdir(fWithPath):
      changeDirectoryCSVFromGB2312ToUTF8(fWithPath)
    else:  # 文件
      if f.endswith('.csv'):
        changeFileFromGB2312ToUTF8(fWithPath)

def main():
  changeDirectoryCSVFromGB2312ToUTF8('/home/huangjian/git/huangjian/RPractice/StudyBook_StatisticsWithR')

if __name__ == "__main__":
  main()

