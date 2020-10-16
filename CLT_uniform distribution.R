##########CLT_uniform distribution###########
a=5
b=10
mu=(1/2)*(a+b)
sigma1=(1/12)*(b-a)^2
sigma=sqrt(sigma1)
xbar_vec=c()# empty vector
n=16#samplesize
z_vec=c()
for(i in 1:100000){
  x=runif(n,a,b)
  xbar=mean(x)
  xbar_vec=c(xbar_vec,xbar)
  z=(xbar-mu)/(sigma/sqrt(n))
  z_vec=c(z_vec,z)
}
xvec=runif(1000000,a,b)
print(xbar_vec)
print(z_vec)
par(mfrow=c(3,1))
hist(xvec, breaks = 30,xlim = c(0,20))
hist(xbar_vec,breaks = 30,xlim = c(0,20))
hist(z_vec,breaks = 30,xlim = c(-4,4))
print(sd(xvec))
print(mean(xbar_vec))
print(sd(xbar_vec))
##poission distribution from ctl## home work
a=5
b=10
mu=(1/2)*(a+b)
sigma1=(1/12)*(b-a)^2
sigma=sqrt(sigma1)
xbar_vec=c()# empty vector
n=16#samplesize
z_vec=c()
for(i in 1:100000){
  x=ppois(n,a,b)
  xbar=mean(x)
  xbar_vec=c(xbar_vec,xbar)
  z=(xbar-mu)/(sigma/sqrt(n))
  z_vec=c(z_vec,z)
}
xvec=ppois(1000000,a,b)
print(xbar_vec)
print(z_vec)
par(mfrow=c(3,1))
hist(xvec, breaks = 30,xlim = c(0,20))
hist(xbar_vec,breaks = 30,xlim = c(0,20))
hist(z_vec,breaks = 30,xlim = c(-4,4))
print(sd(xvec))
print(mean(xbar_vec))
print(sd(xbar_vec))

