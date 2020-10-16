m=19#population mean
sigma=3.5#population sd
n=16#datapoint
result=c()#emptyvector
for(i in 1:1000){
  x=rnorm(n,m,sigma)
  xbar=mean(x)
  alpha=0.1
  lowci=xbar-(qnorm(1-(alpha/2))*sigma/sqrt(n))
  highci=xbar+(qnorm(1-(alpha/2))*sigma/sqrt(n))
  if((m>lowci)&(m<highci)){
    result=c(result,"inside")
  }else{result=c(result,"outside")}
}
inside=length(subset(result,result=="inside"))
outside=length(subset(result,result=="outside"))
print(inside)
print(outside)
plot(inside,outside)
###############t test###########
pt(2.5,10)
help(pt)
qt(.95,10)
rt(16,10)
dt(2,2)
#########################################################################
tt <- seq(0, 10, len = 21)
ncp <- seq(0, 6, len = 31)
ptn <- outer(tt, ncp, function(t, d) pt(t, df = 3, ncp = d))
t.tit <- "Non-central t - Probabilities"
image(tt, ncp, ptn, zlim = c(0,1), main = t.tit)
persp(tt, ncp, ptn, zlim = 0:1, r = 2, phi = 20, theta = 200, main = t.tit,
      xlab = "t", ylab = "non-centrality parameter",
      zlab = "Pr(T <= t)")

plot(function(x) dt(x, df = 3, ncp = 2), -3, 11, ylim = c(0, 0.32),
     main = "Non-central t - Density", yaxs = "i")

