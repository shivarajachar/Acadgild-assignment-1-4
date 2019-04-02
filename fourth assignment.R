#1)
#a)
str(titanic3)
table(titanic3$pclass)
View(Titanic)
boxplot(fare~pclass,titanic3,main="fare vs class",
        xlab="class",ylab="fares")
#yes there is a huge difference in the fares of different classes of tickets 
# as the average price of tickets also has a huge difference
#the tickets price inside a specific class also varies 
#based on other amenities provided

#b)
clage<-table(titanic3$sex,titanic3$pclass)
barplot(clage,main="gender in class",xlab = "class",legend=row.names(clage),
        col=c("red","blue"))
#the male female ratio in class 1 is equal compared to other classes
#no of males in 3rd class are more compared to other classes
#in general more men travelled in titanic than female

#2)
View(mtcars)
boxplot(mtcars$cyl)
boxplot(mtcars$mpg~ mtcars$cyl)
boxplot(mtcars$mpg~ mtcars$gear)


#3
#find the probability that X is equal to 17

dbinom(17, size = 31, prob = 0.447)

#Find the probability that X is at most 13.

pbinom(13, size = 31, prob = 0.447,lower.tail = TRUE)


#Find the probability that X is bigger than 11.

pbinom(11, size = 31, prob = 0.447, lower.tail = FALSE)

#Find the probability that X is at least 15.

pbinom(14, size = 31, prob = 0.447, lower.tail = FALSE)

#Find the probability that X is between 16 and 19, inclusive.
dbinom(16, size = 31, prob = 0.447) + dbinom(17, size = 31, prob = 0.447) +dbinom(18, size = 31, prob = 0.447)+dbinom(19, size = 31, prob = 0.447)
