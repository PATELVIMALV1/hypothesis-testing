#import(LabTAT)
attach(LabTAT)
summary(LabTAT)
#means
# Laboratory.1    Laboratory.2    Laboratory.3    Laboratory.4 
#Mean   :178.4   Mean   :178.9   Mean   :199.9   Mean   :163.7 

#normality test
#Ho<-data is normally disturbuted
#Ha<-data is not normally disturbuted 
library(nortest)
shapiro.test(Laboratory.1)
#p-value = 0.5508>0.05
#since the p-value is greater than 0.05 we accept the null hypothesis
shapiro.test(Laboratory.2)
#p-value = 0.8637>0.05
#since the p-value is greater than 0.05 we accept the null hypothesis
shapiro.test(Laboratory.3)
#p-value = 0.4205>0.05
#since the p-value is greater than 0.05 we accept the null hypothesis
shapiro.test(Laboratory.4)
#p-value = 0.6619>0.05
#since the p-value is greater than 0.05 we accept the null hypothesis

#varience test
#Ho<-the varience in the lab reports of lab A is equal to varience of lab B
#Ha<-the varience in the lab reports of lab A is not equal to varience of lab B 

var.test(Laboratory.1,Laboratory.2)
#p-value = 0.1675>0.05
#since p-value is greaterthan 0.05 thus we aceept the null hypothesis
#the varience in the lab reports of lab 1 is equal to varience of lab 2
var.test(Laboratory.1,Laboratory.4)
#p-value = 0.1408>0.05
#since p-value is greaterthan 0.05 thus we aceept the null hypothesis
#the varience in the lab reports of lab 1 is equal to varience of lab 4
var.test(Laboratory.2,Laboratory.3)
#p-value = 0.2742>0.05
#since p-value is greaterthan 0.05 thus we aceept the null hypothesis
#the varience in the lab reports of lab 2 is equal to varience of lab 3
var.test(Laboratory.3,Laboratory.4)
#p-value = 0.3168>0.05
#since p-value is greaterthan 0.05 thus we aceept the null hypothesis
#the varience in the lab reports of lab 3 is equal to varience of lab 4


#var.test(Laboratory.3,Laboratory.1)
#p-value = 0.01366<0.05
#since p-value is less than 0.05 thus we reject the null hypothesis
#the varience in the lab reports of lab 3 is not equal to varience of lab 1

#since there are  more than 2 components we perform ANOVA test 
#ANOVA 1 way test
#Ho<-the average of TAT value is same 
#Ha<-the average of TAT value is not same 
test1<-aov(Laboratory.1~Laboratory.2,data = LabTAT)
summary(test1)
#p-value=0.168>0.05
#thus we accept the null hypothesis
#that is the average of TAT value is same
test2<-aov(Laboratory.2~Laboratory.3,data = LabTAT)
summary(test2)
#p-value=0.474>0.05
#thus we accept the null hypothesis
#that is the average of TAT value is same
test3<-aov(Laboratory.4~Laboratory.3,data = LabTAT)
summary(test3)
#p-value= 0.173>0.05
#thus we accept the null hypothesis
#that is the average of TAT value is same
test4<-aov(Laboratory.1~Laboratory.4,data = LabTAT)
summary(test4)
#p-value= 0.315>0.05
#thus we accept the null hypothesis
#that is the average of TAT value is same


#test5<-aov(Laboratory.1~Laboratory.3,data = LabTAT)
#summary(test5)
#p-value=0.243>0.05
#thus we accept the null hypothesis
#that is the average of TAT value is same

#visualations 
boxplot(LabTAT)








