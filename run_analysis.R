#This script merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement.
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names.
#Creates a second, independent tidy data set with the average of each 
#variable for each activity and each subject.

library(dplyr)

# read the data
# read the labels
features<-read.csv("features.txt",sep=" ", header = F)
activity_labels<-read.csv("activity_labels.txt",sep=" ", header = F)

# read the test data
data_test<-read.table("./test/X_test.txt")
activity_test<-read.table("./test/y_test.txt")
subject_test<-read.table("./test/subject_test.txt")

#read the training data
data_train<-read.table("./train/X_train.txt")
activity_train<-read.table("./train/y_train.txt")
subject_train<-read.table("./train/subject_train.txt")

# merge the test and training data
data_all<-rbind(data_test,data_train)
activity_all<-rbind(activity_test, activity_train)
subject_all<-rbind(subject_test,subject_train)

names(subject_all)<-"Subject_number"

# add the feature names to the data frame
names(data_all)<-features$V2

# get the requied columns (mean and std only)
col_numbers<-grep("std|mean",features$V2)
data_all<-data_all[,col_numbers]

# replace numbers with activity names 
activity_all<-activity_labels[activity_all[,1],2]

# add columns to the data for the activity name and the subject number
data_all<-cbind(data_all, subject_all, activity_all)

# save the tidy data frame in the current directory
save(data_all, file="tidy_data")

# Average all properties by Subject number and activity type
averages = data_all %>%
  group_by(activity_all,Subject_number) %>%
  summarise_all(mean)

# save the summarised data
save(averages, file="summary_data")


