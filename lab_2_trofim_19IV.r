#rnorm(1000)
#����������� 1000 ������� �� ����������� ���������� ������� ������������� � ������� ������� 20 
data <- as.data.frame(sapply(seq(20,20,len=1000),rnorm))

data_mean <- apply(data, 2, mean)#�������� ������ �������� ��� ������ �������(������� ��������������)



library(ggplot2)
sapply(data[seq(100,1000,100)], qplot) #������ Violin plot ��� ������ ����� ������� 
sapply(data[seq(100,1000,100)],qqnorm) #������ "qq-plot" ��� ������ ����� �������
sapply(data[seq(100,1000,100)],boxplot) #������ "boxplot" ��� ������ ����� �������
library(ggplot2)
data_long <- reshape(data[seq(100,1000,100)], direction='long',varying=list(1:10))
qplot(as.factor(data_long$time), data_long$V100, geom=c("violin", "boxplot"))#������ "violinplot/boxplot" ��� ������ ����� �������





qqnorm(data_mean)    #������ "qq-plot" ��� �������, ���������� �� ������� ��������
boxplot(data_mean)   #������ "boxplot" ��� �������, ���������� �� ������� ��������
#��������� ���������� ggplot2 ��� ���������� ������� "violinplot"
#install.packages('ggplot2', repos='http://cran.us.r-project.org')
library(ggplot2)
qplot(1,data_mean,geom = "violin")#������ "violinplot" ��� �������, ���������� �� ������� ��������