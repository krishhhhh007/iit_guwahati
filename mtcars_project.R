mtcars
data()
?mtcars

mtcarsfit1 = lm(mpg ~ cyl + disp + hp + drat + wt + qsec + vs + am + gear + carb, data = mtcars)
summary(mtcarsfit1)

mtcarsfit2 = lm (mpg ~ ., data = mtcars) # same as above
summary(mtcarsfit2)

install.packages("MASS")
library(MASS)
(model1a = lm(mpg ~ ., data= mtcars))
(model1b = lm(mpg ~ 1, data =mtcars))

stepboth = stepAIC(model1a, direction = "both")
fit1= lm(mpg ~ wt + qsec  + am, data = mtcars)
summary(fit1)

stepfwd = stepAIC(model1b, direction = "forward", scope = list(upper=model1a,lower = model1b))
stepback = stepAIC(model1a, direction = "backward")

install.packages("olsrr")
library(olsrr)
model <- lm(mpg ~ disp + hp + wt +qsec, data = mtcars)
k <- ols_step_all_possible(model)
plot(k)
