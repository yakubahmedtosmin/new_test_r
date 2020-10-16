#######central limit theoream sampling from gaussin
mu=12
sigma=2.5
xbar_vec=c()# empty vector
n=16#samplesize
z_vec=c()
for(i in 1:1000){
  x=rnorm(n,mu,sigma)
  xbar=mean(x)
  xbar_vec=c(xbar_vec,xbar)
  z=(xbar-mu)/(sigma/sqrt(n))
  z_vec=c(z_vec,z)
}
xvec=rnorm(10000,mu,sigma)
print(xbar_vec)
print(z_vec)
par(mfrow=c(3,1))
hist(xvec, breaks = 30,xlim = c(0,20))
hist(xbar_vec,breaks = 30,xlim = c(0,20))
hist(z_vec,breaks = 30,xlim = c(-4,4))
print(sd(xvec))
print(mean(xbar_vec))
print(sd(xbar_vec))
help(runif)
a=5
b=10
x=runif(10000,a,b)
print(x)
hist(x,breaks = 30)
hist(x,breaks = 10000)
mu=(1/2)*(a+b)
sigmasqr=(1/12)*(b-a)^2
sigma1=sqrt(sigmasqr)
print(sigma1)
