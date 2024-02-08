
#科技论文数据库作者识别号的适用性
#作业一

#1

getwd() 

#定义要读取的数据的路径
datapath="/Users/mawenting/Documents/Bigdata_econ/Assignment/Assignment_data/assignment_idaccuracy/Aminer"
file.exists(datapath) 

# 设定datapath为⼯作路径 
setwd(datapath)

#提取当前工作目录下的文件名并生成一个列表
list <- list.files() 

#建立一个空的数据框
df <- data.frame()

#将每一个csv转化为数据框并纵向合并
for(i in list){
  
  tempdf=read.csv(file=i)
  df <- rbind(df,tempdf)
  
}

head(df)

#2使用lapply和do.call读取并合并多个文件

#lapply输出的是list并未合并，使用do.call合并

data_list <- lapply(list, read.csv)
df1 <- do.call(rbind, data_list)

head(df1)

#3在命令行运行以下命令

# #!/usr/bin/env Rscript
# Rscript  /Users/mawenting/Documents/Bigdata_econ/Assignment/add.R /Users/mawenting/Documents/Bigdata_econ/Assignment/Assignment_data/assignment_idaccuracy/Aminer
#add.R 是脚本名称 后面是输入的参数


