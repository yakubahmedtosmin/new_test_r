mu=12
#sigma=2.5
xbar_vec=c()
n=16
z_vec=c()

for (i in 1:10000){
  x=rpois(n,mu)
  xbar=mean(x)
  xbar_vec=c(xbar_vec,xbar)
  z=(xbar-mu)/(mu/sqrt(n))
  z_vec=c(z_vec,z)
}

#plot histograms

xvec=rpois(10000,mu)
par(mfrow=c(3,1))
hist(xvec,breaks=30,xlim=c(0,20), col= "red")
hist(xbar_vec,breaks=30,xlim=c(0,20), col = "blue")
hist(z_vec,breaks=30)

print(mean(xvec))
print(sd(xvec))
print(mean(xbar_vec))
print(sd(xbar_vec))
