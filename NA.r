x =c(1,2,3,4,5,6,7,8,9,10,11,12,NA,NA,NA,NA)
y = x[3]
y1=x[is.na(x)]
print(y1)
y2=x[!is.na(x)]
print(y2) 
y3=length(x[!is.na(x)])
print(y3)

