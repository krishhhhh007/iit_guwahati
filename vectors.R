women
mtcars
# Data structures in R

# vectors----
v1 = c ("A", "B", "C") #create a vector
v1                     #print the vector
class(v1)              # print the class of the vector
(v2 = c(1, 2,3))
class(v2)
(v3 = c(TRUE, FALSE, TRUE))
class(v3)
v3a = c(T, F, T)
v4 = 100:200       #100 TO 200
v5 = seq(1, 10, 2)
#V4; v5
v4
v4[-c(1,3,4)]
v4[v4 > 150]  #values of v4 greater than 150
length(v4)
v7 = c("A" , "C")
v1
v1[v1 %in% v7]  #values in v1 that are in v7
v1
v1["A"]      #error
v1[1]


#Matrix----






#Arrays----







#List----







#Factors----







#DataFrame----
rollno = c(1, 2, 3)
course = c("MBA", "BBA", "MCA")
name = c("Rohit" , "Lalit" , "Hitesh")
dept = c("Dept1" , "Dept1" , "Dept2")
marks = floor(rnorm(3,50,10))
?rnorm   # help documentation
students = data.frame(rollno, name, course, dept, marks)
students
class(students)
str(students)
summary(students)
