
rnorm(1000)#кол-во выборок

data <- as.data.frame(sapply(seq(15,15,len=1000),rnorm))

data_mean <- apply(data, 2, mean)

#standart devation - стандартное отклонение
data_sd <- apply(data, 2, sd)
data_var <- apply(data, 2, var)

mean(data_mean)
mean(data_sd)

data_mean+(qt(0.05,14)*data_sd/sqrt(15))
data_mean-(qt(0.05,14)*data_sd/sqrt(15))

#интервальные значения дисперсии для доверительных вероятностей P=0,90, P=0,95
data_disp_dover_p1 = 15*data_var/qchisq(0.05, 15)
data_disp_dover_p2 = 15*data_var/qchisq(0.95, 15)

#sum(data_disp_dover_p1 < 1 | data_disp_dover_p2 > 1)


#интервальные значения среднего для доверительных вероятностей P=0,90, P=0,95
data_disp_doverie_p3 <- 15*data_var/qchisq(0.025, 15)
data_disp_doverie_p4 <- 15*data_var/qchisq(0.975, 15)

#sum(data_disp_doverie_p3 < 1 | data_disp_doverie_p4 > 1)

#интервальные значения стандартного отклонения для доверительных вероятностей P=0,90, P=0,95
data_mean+(qt(0.025,15-1))*data_sd/sqrt(15)
data_mean-(qt(0.025,15-1))*data_sd/sqrt(15)

#интервальная оценка СКО
ocen1 <- sqrt(data_disp_dover_p1)
ocen2 <- sqrt(data_disp_dover_p2)
ocen3 <- sqrt(data_disp_doverie_p3)
ocen4 <- sqrt(data_disp_doverie_p4)