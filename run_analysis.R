#Code for Getting and Cleaning Data project 

#Setting the file directory
setwd("C:/Users/Adrien Gainié/Desktop/MOOC/Data Science Specialization/Getting and Cleaning Data/Project")

#STEP 1
##Merging test data sets together
#import data sets
X_test<-read.table("test/X_test.txt")
subject_test<-read.table("test/subject_test.txt")
Y_test<-read.table("test/Y_test.txt")
Var_names<-read.table("features.txt")
#Add variables' names
Var_names[,2]<-as.character(Var_names[,2])
names(X_test)<-Var_names[,2]
names(Y_test)<-"Training_labels"
names(subject_test)<-"subject"
#Merging data sets
test1<-cbind(subject_test,Y_test)
test<-cbind(test1,X_test)


##Adding the data from the training data sets
#import data sets
X_train<-read.table("train/X_train.txt")
subject_train<-read.table("train/subject_train.txt")
Y_train<-read.table("train/Y_train.txt")
#Add variables' names
names(X_train)<-Var_names[,2]
names(Y_train)<-"Training_labels"
names(subject_train)<-"subject"
#Merging data sets
train1<-cbind(subject_train,Y_train)
train<-cbind(train1,X_train)

#Merging all data together
final1<-rbind(train,test)
#to check whether there all sujects performs all activities
with(final1, table(subject, Training_labels))

#STEP 2: Extracting the mean and standard deviation for each measurement.
extract<-Var_names[grepl("mean()",Var_names[,2],fixed=TRUE)|
                   grepl("std()",Var_names[,2],fixed=TRUE),2]

final2<-final1[,c("subject","Training_labels",extract)]

#STEP 3
#adding activity names
activity<-read.table("activity_labels.txt")
names(activity)<-c("Training_labels","activity")
final<-merge(final2, activity, by="Training_labels")
#Removing Training number, only keeping Activity Names
final<-subset(final,select=-Training_labels)

#STEP 4
#Labelling variables: variables have already been labelled in the step 1


#STEP 5
if(!"reshape2" %in% installed.packages()) install.packages("reshape2")
library(reshape2)
finalMelt<-melt(final,id=c("subject","activity"))
final_average<-dcast(finalMelt, subject + activity ~ variable, mean )
#To check if we have excatly one activity for one subject
with(final_average, table(subject,activity))

write.table(final_average,"final_average.txt",row.names=FALSE)



