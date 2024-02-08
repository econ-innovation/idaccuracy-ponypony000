
#commandArgs函数可以从命令⾏读⼊参数
args <- commandArgs(trailingOnly = TRUE) 

#第一个参数
datapath <- args[1]

setwd(datapath)
list <- list.files()
data_list <- lapply(list, read.csv)
df2 <- do.call(rbind, data_list)

head(df2)