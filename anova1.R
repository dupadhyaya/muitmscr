p1=c(9, 12, 14, 11, 13)
p2=c(10, 6, 9, 9, 10)
p3=c(12, 14, 11, 13, 11)
p4=c(9, 8, 11, 7, 8)
y = c(p1,p2,p3,p4)
y
n=rep(5,4)
n
group = rep(1:4,n)
group
ps = paste("p",group,sep="")
ps
groups = ps
#tmp = tapply(y, group, stem)
#stem(y)
#-------------
tmpfn = function(x) c(sum = sum(x), mean = mean(x), var = var(x), n = length(x))
tapply(y, groups, tmpfn)
#---------------
data = data.frame(y = y, groups = factor(groups))
fit = lm(y ~ groups, data)
anova(fit)
# - Table Values 
df = anova(fit)[, "Df"]
names(df) = c("trt", "err")
df
# Confidence Interval
alpha = c(0.05, 0.01)
qf(alpha, df["trt"], df["err"], lower.tail = FALSE)
