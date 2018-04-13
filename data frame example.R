#Create df

rollno = paste("S", sep="-", 1:30)
rollno
name= paste0("student", 1:30, sep="-", "xyz", collapse = NULL)
name
gender= sample(c("M","F"), size = 30, replace = T, prob = c(0.5, 0.5))
gender
age = floor(runif(30,min=20, max = 40))
age
marks = ceiling(rnorm(30, mean = 50, sd=5))
marks
course= sample(c("BTech", "MTech", "Phd"), size = 30, replace = T, prob = c(0.5, 0.3, 0.2))
course
married= sample(c("FALSE","TRUE"), size = 30, replace = T, prob = c(0.8, 0.2))

df= data.frame(rollno,name,gender,age, course,marks,married)
df
?round
?rnorm
?runif
?sample
?paste0


#subset of df

df1 = df[sample(nrow(df), 3),]
df1
(df2 = subset(df, age >=20 & age <27, select= c(rollno, name)))

#dplyr
#install.packages("dplyr")
library(dplyr)
(df3 = sample_n(df, 10))
(df4 = sample_frac(df, 0.5))

(df5 = df[which(gender == "F" & age >25),])
