Getting and Cleaning Data Project – Codebook
The data comes from an experiment conducted with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The data obtained from the experiment were then processed to obtain a tidy dataset called final_average.txt. This dataset was constructed by merging the training dataset and the test datasets together, keeping only mean and standard deviation measurement on all activity. Then we calculated the average of each variable for each subject, each activity. The resulting table has 180 observations and 68 variables.
==========================================================================
Here the list of the variables and the associated explanatory text:
-	Subject: 
Integer
The number of the subject. There are 6 observations by subject corresponding to one observation by activity for the 66 variables

-	Activity: 
Character
The name of the activity: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

-	The 66 other variables are average over subject and activity. They are numeric
	The first part refers to what is measured:	
	tBodyAcc : the body linear Acceleration
	tGravityAcc: the Gravity acceleration
	tBodyAccJerk : the body linear acceleration in Jerk Signals
	tBodyGyro : the angular velocity
	tBodyGyroJerk: the angular velocity in Jerk Signals
	tBodyAccMag: the Magnitude of the body linear acceleration
	tGravityAccMag: the Magnitude of the Gravity acceleration
	tBodyAccJerkMag: the Magnitude of the body linear acceleration in Jerk Signals
	tBodyGyroMag : the Magnitude of the angular velocity
	tBodyGyroJerkMag: the Magnitude of the angular velocity in Jerk Signals
	fBodyAcc : the Fast Fourier Transform of the body linear acceleration
	fBodyAccJerk : the Fast Fourier Transform of the body linear acceleration in Jerk Signals
	fBodyGyro: the Fast Fourier Transform of the gravity acceleration
	fBodyAccMag: the Fast Fourier Transform of the body linear acceleration magnitude
	fBodyAccJerkMag: the Fast Fourier Transform of the body linear acceleration magnitude in Jerk Signals
	fBodyGyroMag : the Fast Fourier Transform of the angular velocity magnitude
	fBodyGyroJerkMag : the Fast Fourier Transform of the angular velocity magnitude in Jerk Signals

	The second part refers to mean and standard deviation:
	The –mean() component refers to the mean
	The –std() refers to the standard deviation

	The last part refers to the direction (X, Y, Z) when possible
For instance, the variable tBodyAcc-mean()-X is the mean of the mean of the linear body acceleration over the X direction.
	The list of variables:
	tBodyAcc-mean()-X
	tBodyAcc-mean()-Y
	tBodyAcc-mean()-Z
	tBodyAcc-std()-X
	tBodyAcc-std()-Y
	tBodyAcc-std()-Z
	tGravityAcc-mean()-X
	tGravityAcc-mean()-Y
	tGravityAcc-mean()-Z
	tGravityAcc-std()-X
	tGravityAcc-std()-Y
	tGravityAcc-std()-Z
	tBodyAccJerk-mean()-X
	tBodyAccJerk-mean()-Y
	tBodyAccJerk-mean()-Z
	tBodyAccJerk-std()-X
	tBodyAccJerk-std()-Y
	tBodyAccJerk-std()-Z
	tBodyGyro-mean()-X
	tBodyGyro-mean()-Y
	tBodyGyro-mean()-Z
	tBodyGyro-std()-X
	tBodyGyro-std()-Y
	tBodyGyro-std()-Z
	tBodyGyroJerk-mean()-X
	tBodyGyroJerk-mean()-Y
	tBodyGyroJerk-mean()-Z
	tBodyGyroJerk-std()-X
	tBodyGyroJerk-std()-Y
	tBodyGyroJerk-std()-Z
	tBodyAccMag-mean()
	tBodyAccMag-std()
	tGravityAccMag-mean()
	tGravityAccMag-std()
	tBodyAccJerkMag-mean()
	tBodyAccJerkMag-std()
	tBodyGyroMag-mean()
	tBodyGyroMag-std()
	tBodyGyroJerkMag-mean()
	tBodyGyroJerkMag-std()
	fBodyAcc-mean()-X
	fBodyAcc-mean()-Y
	fBodyAcc-mean()-Z
	fBodyAcc-std()-X
	fBodyAcc-std()-Y
	fBodyAcc-std()-Z
	fBodyAccJerk-mean()-X
	fBodyAccJerk-mean()-Y
	fBodyAccJerk-mean()-Z
	fBodyAccJerk-std()-X
	fBodyAccJerk-std()-Y
	fBodyAccJerk-std()-Z
	fBodyGyro-mean()-X
	fBodyGyro-mean()-Y
	fBodyGyro-mean()-Z
	fBodyGyro-std()-X
	fBodyGyro-std()-Y
	fBodyGyro-std()-Z
	fBodyAccMag-mean()
	fBodyAccMag-std()
	fBodyBodyAccJerkMag-mean()
	fBodyBodyAccJerkMag-std()
	fBodyBodyGyroMag-mean()
	fBodyBodyGyroMag-std()
	fBodyBodyGyroJerkMag-mean()
	fBodyBodyGyroJerkMag-std()
==========================================================================

The dataset is tidy because:
-	Each variable is in one column
-	Each different observation of that variable should be in a different row
-	The table contains only one type of data
-	All variables have names
-	All variables are in the correct format
