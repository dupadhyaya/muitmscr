# Sample Data 
rollno <-c(1,2,3,4,5,6,7,8,9,10)			
name <-c('AISHWARYA RAWAT','BHAWNA PATHAK','DEEKSHA DHAPOLA','KARISHMA JOSHI','MAYANK SINGH','PARUL BISHT','RAJESH MASIWAL','SUBHALA SINGH','VIJAY KHATRI','NEERAJ PANT')			
sysadmin <-c(77,101,104,80,74,117,88,104,108,55)			
aca <-c(81,96,83,84,87,103,77,104,83,79)			
dwm <-c(76,89,109,117,87,131,76,115,125,96)			
project <-c(67,81,76,89,83,87,92,84,94,76)
gender <-c('F','F','F','F','M','F','M','F','M','M')
overall <-c(75.25,91.925,93,92.5,82.75,109.625,83.25,101.95,102.5,76.5)			
married <-c(FALSE,TRUE,FALSE,TRUE,TRUE,FALSE,FALSE,TRUE,TRUE,TRUE)			
df1 = data.frame(rollno, name, sysadmin, aca,dwm, gender,project,overall, married,stringsAsFactors = F)
df2 = data.frame(rollno, name, sysadmin, aca,overall, married)

str(df1)
str(df2)
df2$name[df2$married==T]
write.csv(df1,file="s2.csv")
df3 = read.csv(file="s2.csv",as.is = T,row.names = 1,header=T)
str(df3)
df3
