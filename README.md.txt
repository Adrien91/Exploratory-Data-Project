==================================================================

Getting and Cleaning Data Project 
Version 1.0

==================================================================

R version: 3.1.1 (2014-07-10)
Original Data from 
Human Activity Recognition Using Smartphones Dataset
Version 1.0
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

==================================================================

The data comes from an experiment conducted with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 
we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for 
generating the training data and 30% the test data. 
The data obtained from the experiment were then processed to obtain a tidy dataset called final_average.txt. 
This dataset was constructed by merging the training dataset and the test datasets together, keeping only mean 
and standard deviation measurement on all activity. Then we calculated the average of each variable for each subject, 
each activity. The resulting tables has 180 observations and 68 variables.

==================================================================

The scrip used to generate this dataset is called code_project. To run this script, you first need to download 
the dataset (avalaible here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
in your working directory and then change the working directory path in the script.
Then you only need to run the script to obtained the tidy dataset in a table called final_average.txt.

Basically the script do the following:

It merges the training and the test sets to create one data set. Then, it extracts only the raw measurements on the mean 
and standard deviation for each signal (basically, it only extracts variable with mean() and std()). 
Finally, it creates a new tidy dataset with the average of each variable for each 
activity and each subject.

The dataset is tidy because :
- Each variable is in one column
- Each different observation of that variable should be in a different row
- The table contains only one type of data
- All variables have names
- All variables are in the correct format


