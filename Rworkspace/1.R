getwd()
setwd(D:/14winter/135/project/STA135PROJECT/Rworkspace)
load("D:/14winter/135/project/STA135PROJECT/Rworkspace/humrecog_data/samsungData.rda")
ls()
dim(samsungData)
levels(as.factor(samsungData[,"activity"]))
data=samsungData[,1:561]
dis=dist(data)
clus<-hclust(dis)
names(clus)
clus$merge
plot(clus)
km <- kmeans(dis, 6, nstart = 20)
km
try=list(hclustering=clus,kmean=km)
save(try,file="suibiangao.rda")

