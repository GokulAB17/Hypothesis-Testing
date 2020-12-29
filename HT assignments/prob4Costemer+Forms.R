#TeleCall uses 4 centers around the globe to process 
#customer order forms. They audit a certain %  of the 
#customer order forms. Any error in order form renders 
#it defective and has to be reworked before processing.  
#The manager wants to check whether the defective %  
#varies by centre. Please analyze the data at 5% significance 
#level and help the manager draw appropriate inferences

#Minitab File: CustomerOrderForm.mtw

#create cof dataframe object by reading data from Costomer+OrderForm.csv
cof<-read.csv(file.choose())

View(cof) #view the dataframe

#we know here y- discrete label values and x- discrete 4 countries population
#we choose Chisqare test for Hypothesis testing

stacked_cof<-stack(cof)
View(stacked_cof)

table(stacked_cof$ind,stacked_cof$values)

#perform Chisquare test
#H0: %Defective forms does not varies through  centers
#H1: %Defective forms does varies through centers
?chisq.test
chisq.test(table(stacked_cof$ind,stacked_cof$values))

#pvalue - 0.2771 > 0.05 so we accept null hyphothesis H0 

# inference: % defective forms does not varies among centers 