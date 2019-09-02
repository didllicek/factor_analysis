library(qmethod)
library(psych)
library(GPArotation)
mydata<-read.csv2('C:/belfast_ulster/factor_analysis/data.csv',sep=';', header = T)
data <- as.data.frame(mydata)
cor_data=cor(data,method="pearson")
#parallel<-fa.parallel(cor_data, fm='minres', fa='fa')
#f_data <- factanal(data, 6, rotation='oblimin')
#print(f_data)
#print(f_data$loadings,cutoff=0)
#print(f_data)

#data_cor <- cor(data)
#parallel<-fa.parallel(data, fm='minres', fa='fa')


#for (row in 1:nrow(f_data$loadings)) {
#  f <- f_data$loadings[row,which.max(f_data$loadings[row,])]
#  names(f_data$loadings)
#  print(which.max(f_data$loadings[row,]))
#}

parallel<-fa.parallel(cor_data, fm='minres', fa='fa')

q_data<-qmethod(data,nfactors=4, rotation='oblimin')
#summary(q_data)
#write.csv(q_data$flagged,file ='C:\\belfast_ulster\\factor_analysis\\R_oblimin_5factors.csv')


#data(lipset)
#results <- qmethod(lipset[[1]], nfactors = 3, rotation = "oblimin")




