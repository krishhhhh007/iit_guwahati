marks = c(1:80, 100,1000)
marks
marks2 = c(1:80, 100)
par(mfrow = c(1,2)) # multiple frames 1 row 2 columns
boxplot(marks2)

abline(h= c(1,21, 41, 41.23,61,100))
boxplot(marks)
abline(h= c(1, 21.25, 41.50, 52.93, 61.75, 1000))
mean(marks2)
mean(marks2); mean(marks)

summary(marks)
abline(h= c(1,21,25,41,5,52,93,61,75,100))
par(mfrow = c(2,2))  # four quardarnts 2 rows 2 columns
par(mfrow=c(1,1))
hist(marks)
plot(marks2)


set.seed(482)
y = rnorm(100)
boxplot(y)
identify(rep(1, length(y)), y, labels = seq_along(y))
y[86]
