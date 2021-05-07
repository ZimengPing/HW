matrix1 <- matrix(c(7,2,9,4,12,13), nrow = 2, ncol = 3)
matrix1

matrix2 <- matrix(c(1,2,3,7,8,9,12,13,14,19,20,21), nrow = 3, ncol = 4)
matrix2

matrix1%*%matrix2

Data_Frame <- data.frame (
  id = c(1,2,3,4,5),
  name = c("Peter", "Amy", "Ryan", "Gary", "Michelle"),
  salary = c(623.30,515.20,611.00,729.00,843.25)
)
Data_Frame

Data_Frame1 <- data.frame (
  department = c("IT", "finance", "accounting", "statistic", "management")
)

New_Data_Frame1 <- cbind(Data_Frame, Data_Frame1)
New_Data_Frame1

result =  New_Data_Frame1[c(1,3,5),c(2,3)]
print(result)

name = c("Peter",  "Gary", "Michelle")
salary = c(623.30,729.00,843.25)
barplot(salary, names.arg = name)


name1 <- c("Amy", "Peter",  "Michelle")
salary1 <- c(515.20,623.30,843.25)
pie(salary1, label = name1, main = "Pie Chart")


par(mar=c(0,0,0,0))
plot.window(xlim = c(0, 27),ylim = c(0,13),
            xaxs="i",yaxs="i")
for(i in seq(1,by=2,length=7))
{
  rect(0,i-1,27,i,border=NA,col="red")
}
for(i in seq(2,by=2,length=6))
{
  rect(0,i-1,27,i,border=NA,col="white")
}
rect(0,6,11.8,13,,border=NA,col="blue")
b1=c(6.7,6+3*0.7,6+5*0.7,6+7*0.7,6+9*0.7)
b2=c(6+2*0.7,6+4*0.7,6+6*0.7,6+8*0.7)
b=b1
a=rep(1,5)
for(i in 2:11)
{
  if((i/2)!=ceiling(i/2))
  { 
    a=append(a,rep(i,5))
    b=append(b,b1)
  }else
  if((i/2)==ceiling(i/2))
  {
    a=append(a,rep(i,4))
    b=append(b,b2)
  }
}
for(j in 1:50)
  symbols(a[j],b[j], stars=as.matrix(t(c(0.1,0.05,0.1,0.05,
                                         0.1,0.05,0.1,0.05,0.1,0.05)*4.5)),add=T, bg="white", lwd=1, inches=F)


