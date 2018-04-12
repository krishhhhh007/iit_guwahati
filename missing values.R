v1 = c(1,2,NA, NA, 5)
is.na(v1)  # to check the missing vaue
sum(is.na(v1))
mean(v1)
mean(v1, na.rm = T)
v1a = na.omit(v1)
sum(v1a)
?na.omit
mean(v1, na.rm = T)
v1[is.na(v1)]
v1[c(3,4)]

v1[is.na(v1)] = mean(v1, na.rm= T)
v1

install.packages("VIM")
library(VIM)
data(sleep, package = "VIM")
head(sleep)
dim(sleep)
complete.cases(sleep) # all complete rows without any missing values
sum(complete.cases(sleep))  # no of missing cases
sum(!complete.cases(sleep))
sleep[complete.cases(sleep),]
sleep[!complete.cases(sleep),]
is.na(sleep$Dream)
sum(is.na(sleep$Dream))
mean(is.na(sleep$Dream))
colSums(is.na(sleep))   # no of missing values in each column
rowSums(is.na(sleep))
head(sleep)
is.na(sleep[1:3,])


install.packages("mice")
library(mice)
mice :: md.pattern(sleep)  # 42 rows without any missing value


#visualisation
VIM::aggr(sleep, prop=F, numbers=T)
VIM::aggr(sleep, prop= T)
VIM::marginplot(sleep)



