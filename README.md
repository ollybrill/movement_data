# movement_data
Contains processed data and scripts for Coursera Getting and Cleaning Data assignment

This Repo contains a single script "runanalysis.R" which processes the data collected 
from the accelerometers from the Samsung Galaxy S smartphone. A full description is 
available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Running the script merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
This data is stored in the data frame data_all.

Finally, it creates a second, independent tidy data set with the average of each variable for each activity and each subject.  
This data is stored in a second data frame named "averages".
