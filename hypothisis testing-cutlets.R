attach(Cutlets)
summary(Cutlets)
#mean
#  unit-A    unit-B
#  7.019     6.964

#normality test
#Ho<-data is normally disturbuted
#Ha<-data is not normally disturbuted 
library(nortest)
shapiro.test(Unit.A)
#p-value=0.32>0.05
#conclusion=data is normally disturbuted in Cutlets$Unit.A
#thus we accept the Null Hypothesis 
shapiro.test(Unit.B)
#p-value=0.552>0.05
#conclusion =data is noormally disturbuted in Cutlets$Unit.B
#thus we accept Null Hypothesis


#Varience Test
#Ho<-varience in diameter of unit.a is equal to varience in diameter of unit.b
#Ha<-varience in diameter of unit.a is not equal to varience in diameter of unit.b
var.test(Unit.A,Unit.B)
#p-value =0.3136>0.05
#thus we accept the null hypothesis

#since population component is not given therfore ,performing T-test(2-sample)

#2-sample T-test 
#Ho<-there is no significane difference b/w diameters of Unit.A and Unit.B
#Ha<-there is significane difference b/w diameters of Unit.A and Unit.B
t.test(Unit.A,Unit.B,alternative = "two.sided",correct='TRUE',conf.level=0.95,)
#t = 0.72287
#p-value = 0.4723>0.05
#therefore we accept the null hypothesis
#thus we conclude that there is no significane difference b/w diameters of Unit.A and Unit.B

#95 percent confidence interval:
#-0.09654633  0.20613490

#visulations 
boxplot(Cutlets)


