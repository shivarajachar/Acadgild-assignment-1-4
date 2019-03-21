
# 1)first type using for loop but mdf is of list data type
system.time(for (i in 1)
{
  mdf<-as.data.frame(replicate(10, rnorm(10), simplify=T))
  for(j in 1:10)
  {
    for(k in 1:10)
    {
      mdf[j,k]<-(mdf[j,k])+100*sin(-300)
    }    
  }
  print(mdf)
})
typeof(mdf)

# b) creating without for loop and mdf is list data type
mdf<-as.data.frame(replicate(10, rnorm(10), simplify=T))
system.time(mdf<-mdf+100*sin(-300))
mdf

#c) creating without forloop and mdf is vector data type

mdf<-as.data.frame(replicate(10, rnorm(10), simplify=T))
system.time(llm<-as.vector(unlist(mdf+100*sin(-300))))
llm

#the system time is comparitively more for nested for loop  


#2)
#a)
mymat<-(replicate(4,1:5))
mymat
class(mymat)
mm<-c()
nn<-c()
for(i in seq(nrow(mymat)))
{
mm[i]<-sum(mymat[i,])
nn[i]<-sum(mymat[,i-1])
}
mm
nn

#b)
mymat<-(replicate(4,1:5))
mymat
colSums(mymat)
rowSums(mymat)
