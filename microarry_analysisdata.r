#this script analyis affimetric microarry cancer metadat
setwd("/home/ibab/application/R/datafrm/data")
#reading the data frame 
dat=read.csv(file="all_data.csv",header=TRUE)

#print column
print(colnames(dat))

#dimension
print(dim(dat))

#dat[1,1]
#dat[1:100,1]
print(length(dat))
#dat$colnam

#mean(dat$normal1,na,rm=TRUE)

#min(dat$normal1,rm=TRUE)

#max(dat$normal1,na,rm=TRUE)

print(dat$normal1[5])

print(dat$normal1[5,7]) #5th row 7th col

#slicing 
dat[5,]

print(dat[,4]) #all rows with 4th  col



print(dat[1:5,]) #rows 1 to 5 and all col

print(dat[,1:6])#all rows and 1 to 6 th col

print(dat[1:5,2:7]) # 1 TO 5 TH ROWS ANd 2 to 7 th col

##########histogram##########
normal1_hist=subset(dat$normal1, dat$normal1<1000)
hist(normal1_hist)

###########  find out the NA #####################
> is.na(x)
[1] FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE
> !is.na(x)
[1]  TRUE  TRUE  TRUE  TRUE FALSE FALSE  TRUE  TRUE
> x[!is.na(x)]
[1]  5  7  9  3  8 10
> x[is.na(x)]
[1] NA NA
> x[!is.na(x)]
[1]  5  7  9  3  8 10

# x ia a vector of n element
y = x[3] # 3rd element (y is a no)
y = x[c(3,5,7)] # y is a vector wiith 3, 4th 7 element
y=is.na(x) # with return a vector of True/false of length n, true  state    			for Na false stand for not na
y=!is.na(x) # # with return a vector of True/false of length n, true  state for not Na false stand for na

> dat=read.csv(file="all_data.csv",header=TRUE)
> y5=length(dat[is.na(dat)])
> y5
[1] 3187 # length of NA
> y6=length(dat[!is.na(dat)])
> y6
[1] 237201 #length of  not NA

 
# TO FIND SOME THING US A COL
mygene=c("MAPK3","T1E1","MUC1","RAD52")
> mygene %in%dat$SYMBOL
[1]  TRUE FALSE  TRUE  TRUE





















