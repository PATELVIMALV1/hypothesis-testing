attach(`Costomer+OrderForm`)
summary(`Costomer+OrderForm`)

#Phillippines      Indonesia          Malta            India    

#Defective : 29   Defective : 33   Defective : 31   Defective : 20  

#Error Free:271   Error Free:267   Error Free:269   Error Free:280  

#Ho<-defective percentage does not vary by different branches
#Ha<-defective percentage does vary by different branches

x<-matrix(c(29,271,33,267,31,269,20,280),nrow = 2)
x
chisq.test(x)
#p-value=0.227>0.05
#Thus we accept the null hypothesis 
#Therefore defective percentage does not vary by different branches

