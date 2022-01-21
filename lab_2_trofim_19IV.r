#rnorm(1000)
#генерирация 1000 выборок со стандартным нормальным законом распределения и объёмом выборки 20 
data <- as.data.frame(sapply(seq(20,20,len=1000),rnorm))

data_mean <- apply(data, 2, mean)#точечные оценки среднего для каждой выборки(среднее арифметическое)



library(ggplot2)
sapply(data[seq(100,1000,100)], qplot) #график Violin plot для каждой сотой выборки 
sapply(data[seq(100,1000,100)],qqnorm) #график "qq-plot" для каждой сотой выборки
sapply(data[seq(100,1000,100)],boxplot) #график "boxplot" для каждой сотой выборки
library(ggplot2)
data_long <- reshape(data[seq(100,1000,100)], direction='long',varying=list(1:10))
qplot(as.factor(data_long$time), data_long$V100, geom=c("violin", "boxplot"))#график "violinplot/boxplot" для каждой сотой выборки





qqnorm(data_mean)    #график "qq-plot" для вектора, состоящего из средних значений
boxplot(data_mean)   #график "boxplot" для вектора, состоящего из средних значений
#установка библиотеки ggplot2 для построения графика "violinplot"
#install.packages('ggplot2', repos='http://cran.us.r-project.org')
library(ggplot2)
qplot(1,data_mean,geom = "violin")#график "violinplot" для вектора, состоящего из средних значений