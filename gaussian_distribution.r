setwd("/home/ibab/application/R/datafrm/data")
dat=read.table(file="SOCR_height_weight_data.txt", header=TRUE)
print(colnames(dat))
print(dim(dat))
hight=dat$Height.Inches*2.5
weight=dat$Weight.Pounds*0.45
print(hight)
print(weight)
########hight########################
hist(hight,col="blue",breaks = 30)
hist(hight,col = "yellow",breaks = 25,xlim =c(150,200))
hist(hight,col = "yellow",breaks = 30,xlim =c(150,200),ylim =c(0,2200) )
#for ploting we can use plot, lines, points
x=seq(150,200,0.5)
y=dnorm(x,mean=mean(hight),sd=sd(hight))#gaussin density distribution
yfr=y*nrow(dat)#for frequency dtribution we have to multiply the no of rows with density of data
lines(x,yfr,col="red",lwd=2) #plot with hight
########weight################
hist(weight,col = "red",breaks = 30)
hist(weight,col = "red",breaks = 30,xlim =c(40,80),ylim = c(0,2000))
w=seq(40,80,0.5)
wdens=dnorm(w,mean =mean(weight),sd=sd(weight))
wfr=wdens*nrow(dat)
lines(w,wfr,col="blue",lwd=5)
######## z transform #########
z_hight=(hight-mean(hight))/sd(hight) # since mu and sigma is not avavilable so we take mean for mu and sd for sigma
z_weight=(weight-mean(weight))/sd(weight)
par(mfrow=c(2,2))
hist(z_hight,breaks = 30,col="green")
z_h=seq(-5,5,0.1)
z_hight_dens=dnorm(z_h,mean=0,sd=1)
z_hight_fr=z_hight_dens*nrow(dat)
lines(z_h,z_hight_fr,col="red", lwd=3)
hist(z_weight,breaks = 30,col="yellow")
##############par#################
par(mfrow=c(2,2))
hist(hight,col = "blue",breaks = 30,xlim =c(150,200),ylim =c(0,2200) )
lines(x,yfr,col="red",lwd=2)
hist(z_hight,breaks = 30,col="red")
hist(weight,col = "blue",breaks = 30,xlim =c(40,80),ylim = c(0,2000))
hist(z_weight,breaks = 30,col="red")

