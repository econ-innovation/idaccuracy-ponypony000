
#!/usr/bin/env Rscript

#commandArgs函数可以从命令⾏读⼊参数
args <- commandArgs(trailingOnly = TRUE) 

#处理命令行参数
datapath <- args[1]

#定义add函数
add <- function(datapath){
  setwd(datapath)
  list <- list.files()
  data_list <- lapply(list, read.csv)
  df2 <- do.call(rbind, data_list)
  return(df2)
}

result <- add(datapath)
head(df2)

write.csv(result,file="/Users/mawenting/Documents/Bigdata_econ/Assignment")