# import the data

dataset= read.csv("./data/logr2.csv")
str(dataset)
summary(dataset)

install.packages("caTools")
library(caTools)
set.seed(2000)  # regenerate the same set of data
split = sample.split(dataset$purchased, SplitRatio = 0.75)
training_set = subset(dataset, split== TRUE)
test_set = subset(dataset, split == FALSE)
dim(dataset)
nrow(training_set)
length(dataset) # no of columns in a dataframe
length(dataset$gender) # no of elements in the vector
class(dataset$gender)
names(training_set)

#Fitting logistic regression to the Training set
logicmodel1 = glm(purchased ~ gender+age+salary, family = binomial, data= training_set)
summary(logicmodel1)


logicmodel2 = glm(purchased ~ age+salary, family = binomial, data= training_set)
summary(logicmodel2)


test_set2 = data.frame(age=c(40,65), salary=c(4000,5000))
prob_pred2=predict(logicmodel2, type="response", newdata= test_set2)
prob_pred2
cbind(test_set2, prob_pred2)


test_set
prob_pred = predict(logicmodel2, type="response", newdata= test_set)
df_prob_pred= as.data.frame(prob_pred)
summary(df_prob_pred)
head(df_prob_pred)

x=0.10
x
quantile(x)

y_pred = ifelse(prob_pred > 0.5, 1,0)
y_pred
cbind(test_set$purchased, y_pred)


cn= table(test_set[,5], y_pred)
cn
caret:: confusionmatrix(cn)
