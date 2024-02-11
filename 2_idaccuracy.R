
#科技论文数据库作者识别号的适用性
#作业一

#1
#导入在r中进行数据读取的包
library(readr)

#定义要读取的数据的路径
getwd() 
datapath="/Users/mawenting/Documents/Bigdata_econ/Assignment/Assignment_data/assignment_idaccuracy/Aminer"
file.exists(datapath) 
setwd(datapath)

#list.files() 提取当前工作目录下的文件名并存入一个列表
list <- list.files() 
#list <- list.files(pattern="*.csv") #只读取csv文件

#建立一个空的数据框，用于之后的数据合并
df <- data.frame()

#在r中逐条读取列表里的内容转化为数据框，并纵向合并rbind()数据框
for(i in list){
  
  tempdf=read.csv(file=i)
  df <- rbind(df,tempdf)
  
}

head(df)

#写入文件
write.csv(df,file="/Users/mawenting/Documents/Bigdata_econ/Assignment")

#2使用lapply和do.call读取并合并多个文件

#lappy对list里的每一个文件名执行read.csv函数，读取csv，每一个文件作为单独数据框保存到data_list里

data_list <- lapply(list, read.csv)

#使用do.call合并，do.call调用rind()函数，并将data_list里每一个单独数据框依次传递
df1 <- do.call(rbind, data_list)

head(df1)

#3在命令行运行以下命令

# cd 
# #!/usr/bin/env Rscript
# Rscript  /Users/mawenting/Documents/Bigdata_econ/Assignment/add.R /Users/mawenting/Documents/Bigdata_econ/Assignment/Assignment_data/assignment_idaccuracy/Aminer
#add.R 是脚本名称 后面是输入的参数


