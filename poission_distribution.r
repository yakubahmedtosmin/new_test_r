
##POISSION DISTRIBUTION IN R:xvec=rbinom(10000,n,p)
#1. To find out the cumulative probability in R:
mu=7
x=2
p=ppois(x,mu)
print(p)
#2. To find out x from the p value:
p
mu=7
x=qpois(p,mu)
x
for a given x value, return probability density
#for a given x value, return probability density
mu=7
x=2
density=dpois(x,mu)
density
#return m random deviates from poission distribution
mu=7
m=5
xrand=rpois(m,mu)
xrand
#plot the probability density function
mu=7
x=seq(0,10,.5)
dens=dpois(x,mu)
plot(x,dense,type="h")
mu=7
x=seq(0,13,1)
dens=dpois(x,mu)
print(dens)
plot(x,dens,type="h")
#simulation experiment
#generate 10000 random deviates from poisson distribution
mu=7
xvec=rpois(100000,mu)
print(xvec[1:50])
#table
xtab=table(xvec)
print(xtab)
#entries in the table are strings not numbers
#NEED: convert table to data frame
fr=data.frame(xtab)
print(fr)
#as.numeric is a function which converts string to number
plot(as.numeric(fr$xvec),as.numeric(fr$Freq),type = "h")
savehistory("~/poission_distribution.r")
