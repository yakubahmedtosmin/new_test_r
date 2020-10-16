######function#############
##fibo
fibo<-function(a){
  v1=0
  v2=1
  print(v1)
  print(v2)
  for (x in 1:a) {
    v3=v1+v2
    print(v3)
    v1=v2
    v2=v3
  }
}
fibo(5)
fibo(15)
fibo(100)
fibo(200)
##even
even<-function(){
  num = as.integer(readline(prompt="Enter a number: "))
  if((num %% 2) == 0) {
    print(paste(num,"is Even"))
  } else {
    print(paste(num,"is Odd"))
  }
}
even()
##amstrong no
