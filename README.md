# movement_data

This Repo contains a single script "runanalysis.R" which processes the data collected 
from the accelerometers from the Samsung Galaxy S smartphone. A full description is 
available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Running the script merges the training and the test sets to create one data set.
1.  -Extracts only the measurements on the mean and standard deviation for each measurement.
2.  -Uses descriptive activity names to name the activities in the data set
3.  -Appropriately labels the data set with descriptive variable names.
4.  -This data is stored in the data frame _tidy_data_.

Finally, it creates a second, independent tidy data set with the average of each variable for each activity and each subject.  
This data is stored in a second data frame named _summary_data_.

The script assumes the data and the scripts are in path: "~/R/wk4/getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset". 
The script may be edited if this is not the case.

Code_book.md further describes the data in this repositiory.

Files in this repository:

* _Run_analysis.R_               Script described above
* _Codebook.md_                  Summary description of the features in the data
* _features.txt_                 Complete list of the features in the full data set
* _tidy_data_                    R data file containing the tidy data set derived from the raw data using Run_analysis.R. 
* _summary_data_                 R data file containing tidy data set summarised by subject and activity.

#Instructions for running the script?

<b> Step 1: </b> Unzip the folder 'UCI HAR Dataset' from the zipped folder downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

<b> Step 2: </b> With your working directory set to the root directory of the extracted dataset run the run_analysis.R code shared in this repository 

