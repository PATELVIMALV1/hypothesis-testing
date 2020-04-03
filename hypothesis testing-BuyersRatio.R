attach(BuyerRatio)
summary(BuyerRatio)

#normality test
#normality test cannot be performed since the sample size must be greater than seven

#varience test

var.test(North,South)
#p-value = 0.6452
var.test(North,East)
#p-value = 0.3877
var.test(North,West)
# p-value = 0.9239
var.test(South,East)
#p-value = 0.6559
var.test(South,West)
#p-value = 0.5826
var.test(East,West)
#p-value = 0.5826

#performing chisq-square test
#Ho<-All proportions are equal
#Ha<-All proportions are not equal
x<-matrix(c(50,435,142,1523,131,1356,70,750),nrow = 2)
chisq.test(x)
#p-value=0.6603>0.05
#Thus we accept the null hypothisis
#Therefore All proportions are equal

#visualations 
boxplot(BuyerRatio)
