##############vectors##############
#logical data type
vtr1=c(TRUE,FALSE)
#numerical
vtr2=c(15,55,3.26,55.66333333)
#TYPE OF DATA TYPE
class(vtr1)
vtr2
class(vtr2)
#integer
vtr3=c(35L,58L,146L)
class(vtr3)
vtr5=c(TRUE,35L,3.15)
class(vtr5)
#character
vtr6=c("hello",FALSE,25.2)
vtr6
class(vtr6)
##########matrix################
#in R objects in which the elements are arranged in a 2D rectengualr layout
#syntax[matrix(data,nrow,ncol,byrow,dimnames)]
mtr=matrix(c(5:29),5,5)
mtr
########array############
#array can store data more than 2d
#syntax[array(data,dim,dimnames)]
arr=array(c(1:9),dim = c(3,3,4,2))
arr
arr=array(c(1:6),dim = c(3,3,4,2))
arr
########list#########
#which contain element of different types-no,strings,vectors etc
#syntax[list(list(data))]
vtr2=c(15,55,3.26,55.66333333)
vtr6=c("hello",FALSE,25.2)
mylist=list(vtr2,vtr6,vtr1)
mylist
#######data frame########
#its a table or array like structure in which each column contains value of one varialble and each row contains one set of values from each column
#syntax[data.frame(data)]
vec1=c(1:5)
vec2=c("miku","yakub","amma","abba","baba")
vec3=c(15,30,74,155,144)
data.frame(vec1,vec2,vec3)
####################manipulation with odi batting########################
setwd("/home/ibab/application/R/datafrm/data")
dat=read.csv(file="ODI-Batting_Cricket_Analytics.csv", header=TRUE)
dim(dat)
data.frame(dat)
###########operator##########
print(6+9.87)
print(6/9.87)
print(22%%7)# modulus
print(22%/%7)# floor division
var=25
var1=60
print(var>var1)
#######assignment operators###########
########logical operator########
## AND, NOT, OR
value1=c(TRUE,FALSE,TRUE,FALSE)
value2=c(FALSE,TRUE,TRUE,FALSE)
print(value1 && value2)
print(value1 || value2)
print(!value1)
############conditional statement#################
#####if else statement#####
var1=25
var2=0
if((var1+var2)>=250){
  print("value is gresater than 250")
}else if((var1+var2)>75){
  print("value is greater than75")
}else if ((var1+var2)>60){
  print("value is greater than 65")
}else
  print("no is less than 65")
##############switch case############
switch(3,
       '1'=print("monday"),
       '2'=print("tuesday"),
       '3'=print("wednesday"),
       '4'=print("thursday"),
       '5'=print("friday"),
       '6'=print("saturday"),
       '7'=print("sunday"),
)
########loop statement########
#####repeat loop######
#: repeats a statement while a given condition is true.it tests the condition after execution the loop body
##syntax:repeat{commands if(condition){break}}
v1=5
repeat{
  print(v1)
  v1=v1+2
  if(v1>21){
    break
  }
}
######while loop######
##while (condition) {//statement}
v1=5
repeat{
  print(v1)
  v1=v1+2
  if(v1>21){
    break
  }
}
v1=5
while (v1<=21) {
  print(v1)
  v1=v1+2
}
######for loop##########
for(x in 1:25){
  print(x)
}
#######strings########
str1='hey, r is fun'
print(str1)
str2='hello yakub'
str3=paste(str1,str2)# concatenation
str3
nchar(str3)# no of letter/ character
str4=toupper(str3)# to upper case
str4
str5=substr(str4,3,10)#substring
str5
