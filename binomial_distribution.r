#simulating binomial distrubution R
n=10 #no of bernullie trials
p=0.5 #probabbility of success

#1 for a given x value, return cumulative probability upto (p-value)
x=7
pvalue=pbinom(x,n,p)
print(pvalue)

#2 for a given p value, retun corresponding x value
pvalue=0.66
x=qbinom(pvalue,n,p)

#3 for a given x value, return probability density p(x)[start with d] actual probability
density=dbinom(x,n,p)

#4 return m random deviates from the binomial distribution.
m=5
xrand=rbinom(m,n,p)

#two types random numbers: sudo random numbers and actual random numbers

#5 plot probability density functionx
x=seq(0,10,1)
dens=dbinom(x,10,.5)
print() 
plot(x,dens,type="h")

#monte carlo simulation = random no generation.
#6 generate 10000 random deviates from bionomial distributon.
xvec=rbinom(1000,n,p)

xtab=table(xvec)#tabulation no of occurance or no of frequency.
print(xtab)#simulating binomial distrubution R
n=10 #no of bernullie trials
p=0.5 #probabbility of success

#1 for a given x value, return cumulative probability upto (p-value)
x=7
pvalue=pbinom(x,n,p)
print(pvalue)

#2 for a given p value, retun corresponding x value
pvalue=0.66
x=qbinom(pvalue,n,p)

#3 for a given x value, return probability density p(x)[start with d] actual probability
density=dbinom(x,n,p)

#4 return m random deviates from the binomial distribution.
m=5
xrand=rbinom(m,n,p)

#two types random numbers: sudo random numbers and actual random numbers

#5 plot probability density functionx
x=seq(0,10,1)
dens=dbinom(x,10,.5)
print() 
plot(x,dens,type="h")

#monte carlo simulation = random no generation.
#6 generate 10000 random deviates from bionomial distributon.
xvec=rbinom(1000,n,p)

xtab=table(xvec)#tabulation no of occurance or no of frequency.
print(xtab)

#table to data frame.
fr=data.frame(xtab)
print(fr)

##########POSISSION DISTRIBUTION

ppois(x,mu)





e(xtab)
print(fr)

##########POSISSION DISTRIBUTION

ppois(x,mu)





