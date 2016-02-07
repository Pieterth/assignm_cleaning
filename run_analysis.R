# Assignment for week 4 (cleaning of smartphone data)
# Pieter ten Have, 4-2-2016

# Steps
# 1.  I read the 'physical activity measurement'-data from the training-dataset,
# 2.  I do the same with the test-dataset.
# 3.  I RBIND the training and test data.
# 4.  I calculate mean and standard deviaton, by row, of all rows.
# 5.  I read subject_ID and activity_ID trom the training data, CBIND them,
#     do the same with the test data. 
# 6   I RBIND the pairs of columns of ID's of training and test data.
# 7.  I join the 'subject_ID and activity_ID'-columns to 'mean and standard deviation'-columns.
#     Result1 is the answer to assignment part 1.
# 8.  I group the means by subject_ID and activity_ID and calculate mean of means.
#     Result2 is the answer to assignment part 2.

rm(list=ls())
setwd('c:/users/have/dropbox/data_uci')

#     Below I calculate the mean and standard deviation of the combined dataset.

train1<-read.table("./train/X_train.txt", sep="")
test1<-read.table ("./test/X_test.txt", sep="")
total<-rbind(train1, test1)
fun_mean<-apply(total, 1, mean)
fun_sd<-apply(total, 1, sd)

#     Next, I make two columns of subject_ID and activity_ID 

train_subj<-read.table("./train/subject_train.txt", sep="")
train_act<-read.table("./train/y_train.txt", sep="")
as.character(train_subj)
as.character(train_act)
train2<-cbind(train_subj, train_act)

test_subj<-read.table("./test/subject_test.txt", sep="")
test_act<-read.table("./test/y_test.txt", sep="")
as.character(test_subj)
as.character(test_act)
test2<-cbind(test_subj, test_act)

ids<-rbind(train2, test2)
names(ids)<-c("subject","activ")
as.factor(ids$subject)
as.factor(ids$activ)

#     This is the first result

result1<-cbind(ids, fun_mean, fun_sd)

#     this is the second result

temp<-aggregate(fun_mean, by=list(ids$subject, ids$activ), FUN=mean)
names(temp)<-c("subject","activ","mean_of_measurements")
result2<-temp

write.table(result2, file="result2.txt", row.name=FALSE)