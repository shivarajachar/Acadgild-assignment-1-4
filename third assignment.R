# TASK 1
#1) 
states=rownames(USArrests)
states
for(i in 1:length(states))
{
  if(substr(states[i],1,1)=="W")
  {
    print(states[i])
  }
  if(substr(states[i],1,1)=="w")
  {
    print(states[i])
  }
}
# so there are 4 states that starts with 'W' and no states with 'w'

# 2)
states
vect1<-c()
for(i in 1:length(states))
{
vect1[i]<-nchar(states[i])
}
vect1
sort(vect1  ,decreasing= FALSE)
hist(vect1,col="green",
     xlab = "characters in each state",
     cex.axis=1,font.axis=2,cex.lab=1.5)

# task 2

#1)
vec1<-c(rownames(mtcars[1:15,]))
vec2<-c(rownames(mtcars[11:25,]))
vec1
vec2
c=0
for(i in 1:length(vec1))
{
  for(j in 1:length(vec2))
  {
    if(vec1[i]==vec2[j])
    {
    c=c+1  
    }
  }
}
print(c)
#length(vec1) is 15 and length(vec2) is 15 but the elements which match
#between them is only 5

#2
vec1<-c(rownames(mtcars[1:15,]))
vec2<-c(rownames(mtcars[11:25,]))
vec1
vec2
sort(vec1,decreasing = FALSE)
sort(vec1,decreasing=TRUE)
sort(vec2,decreasing = FALSE)
sort(vec2,decreasing=TRUE)

#3) difference between str and paste
hi<-c(10,20,30)
hello<-c("shi","va","raj")
mydd<-data.frame(hi,hello)
paste(hi,hello)

# str is the structure of data frame or vector that gives info about class 
#and variables and data but paste just concatenates data without spaces

#4) introduce a seperator while using paste

paste(hi,hello,sep = ",")
