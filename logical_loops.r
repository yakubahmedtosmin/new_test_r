##############if_else_if#################
x=5
y=10
z=20
if(x==y){
  print("x is less than y")
}else if (y<z){
  print("y greater than z")
}else{
  print("z is greater than x and y")
}
##########while#############
x=10
while(x>3){
  print(x)
  x=x-1
}
#########for loop##########
#directly access elements
x=c(10,2,0,30,40,70)
for(i in x){
  print(x*100)
}
print("---------")
##access elements with index
for(i in 1:length(x)){
  print(x[i]*100)
}
########## function##########

getarea<-function(l,w){
  area= l*w
  return(area)
}
area=getarea(20,10)
print(area)
#######################
help(rnorm)
xvec=rnorm(10,mean = 6,sd=1.5)
print(xvec)