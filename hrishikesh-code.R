#Task1
setwd("C:/Users/hmjoshi/Documents/hrishikesh")
data1 <- as.matrix(read.table("Energy20.txt"))
hrishikesh_data <- data1[sample(1:671,300),c(1:6)]
df <- data.frame(hrishikesh_data)


hist(hrishikesh_data[,1],col = c("blue"))
plot(x = df[,1],col = c("blue"))

hist(hrishikesh_data[,2],col = c("blue"))
plot(x = df[,2],col = c("blue"))

hist(hrishikesh_data[ ,3],col = c("blue"))
plot(x = df[,3],col = c("blue"))

hist(hrishikesh_data[ ,4],col = c("blue"))
plot(x = df[,4],col = c("blue"))

hist(hrishikesh_data[ ,5],col = c("blue"))
plot(x = df[,5],col = c("blue"))
hist(hrishikesh_data[ ,6],col = c("blue"))



temp2 <- log(sqrt(hrishikesh_data[,2]))
x2 <- (temp2-min(temp2)) / (max(temp2)-min(temp2))
hist(x2,col = c("blue"))


temp3 <- sqrt(hrishikesh_data[,3])
x3 <- (temp3-min(temp3)) / (max(temp3)-min(temp3))
hist(x3,col = c("red"))

temp4 <- sqrt(hrishikesh_data[,4])
x4 <- (temp4-min(temp4)) / (max(temp4)-min(temp4))
hist(x4,col = c("gold"))



x5 <- log(hrishikesh_data[,5]+1,max(hrishikesh_data[,5]+1))
hist(x5,col = c("green"))


Y <- log(hrishikesh_data[,6]+1,max(hrishikesh_data[,6]+1))
hist(Y,col = c("orange"))

Ar <- array(c(x2,x3,x4,x5,Y),dim = c(300,5,1))
write.table(Ar,"hrishikesh_transformed.txt")


#Task3
source("AggWaFit718.R")
transdata <- as.matrix(read.table("hrishikesh_transformed.txt"))
fit.QAM(transdata[,c(1:5)],"WAMOP.txt","WAMStat.txt")
fit.QAM(transdata[,c(1:5)],"PMOP.txt","PMStat.txt",g=PM05,g.inv=invPM05)
fit.QAM(transdata[,c(1:5)],"QMOP.txt","QMStat.txt" , g=QM , g.inv =invQM)
fit.OWA(transdata[,c(1:5)],"OWAOP.txt","OWAStat.txt")
fit.choquet(transdata[,c(1:5)],"CHOQUETOP.txt","CHOQStat.txt")
min(hrishikesh_data[,6])
max(hrishikesh_data[,6])

#Task4
xinter <- c(44,4,74.8,31.4)
x2.1 <-  log(44+1,max(hrishikesh_data[,2])+1)
print(x2.1)
x3.1 <-  log(4+1,max(hrishikesh_data[,3]+1))
print(x3.1)
x4.1 <-  log(74.8+1,max(hrishikesh_data[,4])+1)
print(x4.1)
x5.1 <-  log(44+1,max(hrishikesh_data[,5]+1))
print(x5.1)


c(0.301485172134205,1,1,0.655341606349829,0.903704832421471,1,1,0.828863395840371,0.828863395840371,1,1,0.903704832421472,0.903704832421471,1,1)
interpreted <-c(x2.1,x3.1,x4.1,x5.1)
cq = choquet(interpreted,c_weight)
print(cq)
value = max(hrishikesh_data[,6])^cq
print(value)
c1 = max(hrishikesh_data)

#task5
df = data.frame(transdata)
fit <- lm(Y ~ x2 + x3 + x4 + x5, df)
summary(fit)
z = data.frame(rbind(c(0.5714286,0,1,0.3914286)))
colnames(z)=c("x2","x3","x4","x5")
result = predict(fit,z)      
predict_value = (max(hrishikesh_data[,6])+1)^result
print(predict_value)
print(x4)
print(result)


#ALL VALUES
p.all = array()
for (i in c(1:300))
{
  ER = data.frame(rbind(c(transdata[i,2],transdata[i,3],transdata[i,4],transdata[i,5])))
  colnames(ER) = c("x2","x3","x4","x5")
  p.all[i] = predict(fit,ER)
}
pd.all.data = (max(hrishikesh_data[,6])+1)^p.all
print(pd.all.data)
CHQesti <- array(c(i:300))

for (i in c(1:300))
{
  CHQesti[i] = choquet(c(transdata[i,2],transdata[i,3],transdata[i,4],transdata[i,5]),c_weight)
}
print(CHQesti)

CQPrediction = (max(hrishikesh_data[,6])+1)^CHQesti
print(CQPrediction)
hist(CQPrediction,col = c("red"))
