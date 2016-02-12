Course project "Getting and Cleaning Data" by Johns Hopkins University - Cousera
Code Book and Data Dictionary
---------------------------------------------------------------------------------------------------------------------------


The variables of the UCI HAR Dataset have been filtered remapped in accordance with the project instructions (means and standard deviations only).

The following feature variables from the original data set have been included in the analysis and then remapped to make it easier to understand:

```
tBodyAcc-mean()-X -> TimeDomain.BodyAcceleration.Mean()-X
tBodyAcc-mean()-Y -> TimeDomain.BodyAcceleration.Mean()-Y
tBodyAcc-mean()-Z -> TimeDomain.BodyAcceleration.Mean()-Z
tBodyAcc-std()-X -> TimeDomain.BodyAcceleration.StandardDeviation()-X
tBodyAcc-std()-Y -> TimeDomain.BodyAcceleration.StandardDeviation()-Y
tBodyAcc-std()-Z -> TimeDomain.BodyAcceleration.StandardDeviation()-Z
tGravityAcc-mean()-X -> TimeDomain.GravityAcceleration.Mean()-X
tGravityAcc-mean()-Y -> TimeDomain.GravityAcceleration.Mean()-Y
tGravityAcc-mean()-Z -> TimeDomain.GravityAcceleration.Mean()-Z
tGravityAcc-std()-X -> TimeDomain.GravityAcceleration.StandardDeviation()-X
tGravityAcc-std()-Y -> TimeDomain.GravityAcceleration.StandardDeviation()-Y
tGravityAcc-std()-Z -> TimeDomain.GravityAcceleration.StandardDeviation()-Z
tBodyAccJerk-mean()-X -> TimeDomain.BodyAccelerationJerk.Mean()-X
tBodyAccJerk-mean()-Y -> TimeDomain.BodyAccelerationJerk.Mean()-Y
tBodyAccJerk-mean()-Z -> TimeDomain.BodyAccelerationJerk.Mean()-Z
tBodyAccJerk-std()-X -> TimeDomain.BodyAccelerationJerk.StandardDeviation()-X
tBodyAccJerk-std()-Y -> TimeDomain.BodyAccelerationJerk.StandardDeviation()-Y
tBodyAccJerk-std()-Z -> TimeDomain.BodyAccelerationJerk.StandardDeviation()-Z
tBodyGyro-mean()-X -> TimeDomain.BodyAngularSpeed.Mean()-X
tBodyGyro-mean()-Y -> TimeDomain.BodyAngularSpeed.Mean()-Y
tBodyGyro-mean()-Z -> TimeDomain.BodyAngularSpeed.Mean()-Z
tBodyGyro-std()-X -> TimeDomain.BodyAngularSpeed.StandardDeviation()-X
tBodyGyro-std()-Y -> TimeDomain.BodyAngularSpeed.StandardDeviation()-Y
tBodyGyro-std()-Z -> TimeDomain.BodyAngularSpeed.StandardDeviation()-Z
tBodyGyroJerk-mean()-X -> TimeDomain.BodyAngularAcceleration.Mean()-X
tBodyGyroJerk-mean()-Y -> TimeDomain.BodyAngularAcceleration.Mean()-Y
tBodyGyroJerk-mean()-Z -> TimeDomain.BodyAngularAcceleration.Mean()-Z
tBodyGyroJerk-std()-X -> TimeDomain.BodyAngularAcceleration.StandardDeviation()-X
tBodyGyroJerk-std()-Y -> TimeDomain.BodyAngularAcceleration.StandardDeviation()-Y
tBodyGyroJerk-std()-Z -> TimeDomain.BodyAngularAcceleration.StandardDeviation()-Z
tBodyAccMag-mean() -> TimeDomain.BodyAccelerationMagnitude.Mean()
tBodyAccMag-std() -> TimeDomain.BodyAccelerationMagnitude.StandardDeviation()
tGravityAccMag-mean() -> TimeDomain.GravityAccelerationMagnitude.Mean()
tGravityAccMag-std() -> TimeDomain.GravityAccelerationMagnitude.StandardDeviation()
tBodyAccJerkMag-mean() -> TimeDomain.BodyAccelerationJerkMagnitude.Mean()
tBodyAccJerkMag-std() -> TimeDomain.BodyAccelerationJerkMagnitude.StandardDeviation()
tBodyGyroMag-mean() -> TimeDomain.BodyAngularSpeedMagnitude.Mean()
tBodyGyroMag-std() -> TimeDomain.BodyAngularSpeedMagnitude.StandardDeviation()
tBodyGyroJerkMag-mean() -> TimeDomain.BodyAngularAccelerationMagnitude.Mean()
tBodyGyroJerkMag-std() -> TimeDomain.BodyAngularAccelerationMagnitude.StandardDeviation()
fBodyAcc-mean()-X -> FrequencyDomain.BodyAcceleration.Mean()-X
fBodyAcc-mean()-Y -> FrequencyDomain.BodyAcceleration.Mean()-Y
fBodyAcc-mean()-Z -> FrequencyDomain.BodyAcceleration.Mean()-Z
fBodyAcc-std()-X -> FrequencyDomain.BodyAcceleration.StandardDeviation()-X
fBodyAcc-std()-Y -> FrequencyDomain.BodyAcceleration.StandardDeviation()-Y
fBodyAcc-std()-Z -> FrequencyDomain.BodyAcceleration.StandardDeviation()-Z
fBodyAcc-meanFreq()-X -> FrequencyDomain.BodyAcceleration.MeanFreq()-X
fBodyAcc-meanFreq()-Y -> FrequencyDomain.BodyAcceleration.MeanFreq()-Y
fBodyAcc-meanFreq()-Z -> FrequencyDomain.BodyAcceleration.MeanFreq()-Z
fBodyAccJerk-mean()-X -> FrequencyDomain.BodyAccelerationJerk.Mean()-X
fBodyAccJerk-mean()-Y -> FrequencyDomain.BodyAccelerationJerk.Mean()-Y
fBodyAccJerk-mean()-Z -> FrequencyDomain.BodyAccelerationJerk.Mean()-Z
fBodyAccJerk-std()-X -> FrequencyDomain.BodyAccelerationJerk.StandardDeviation()-X
fBodyAccJerk-std()-Y -> FrequencyDomain.BodyAccelerationJerk.StandardDeviation()-Y
fBodyAccJerk-std()-Z -> FrequencyDomain.BodyAccelerationJerk.StandardDeviation()-Z
fBodyAccJerk-meanFreq()-X -> FrequencyDomain.BodyAccelerationJerk.MeanFreq()-X
fBodyAccJerk-meanFreq()-Y -> FrequencyDomain.BodyAccelerationJerk.MeanFreq()-Y
fBodyAccJerk-meanFreq()-Z -> FrequencyDomain.BodyAccelerationJerk.MeanFreq()-Z
fBodyGyro-mean()-X -> FrequencyDomain.BodyAngularSpeed.Mean()-X
fBodyGyro-mean()-Y -> FrequencyDomain.BodyAngularSpeed.Mean()-Y
fBodyGyro-mean()-Z -> FrequencyDomain.BodyAngularSpeed.Mean()-Z
fBodyGyro-std()-X -> FrequencyDomain.BodyAngularSpeed.StandardDeviation()-X
fBodyGyro-std()-Y -> FrequencyDomain.BodyAngularSpeed.StandardDeviation()-Y
fBodyGyro-std()-Z -> FrequencyDomain.BodyAngularSpeed.StandardDeviation()-Z
fBodyGyro-meanFreq()-X -> FrequencyDomain.BodyAngularSpeed.MeanFreq()-X
fBodyGyro-meanFreq()-Y -> FrequencyDomain.BodyAngularSpeed.MeanFreq()-Y
fBodyGyro-meanFreq()-Z -> FrequencyDomain.BodyAngularSpeed.MeanFreq()-Z
fBodyAccMag-mean() -> FrequencyDomain.BodyAccelerationMagnitude.Mean()
fBodyAccMag-std() -> FrequencyDomain.BodyAccelerationMagnitude.StandardDeviation()
fBodyAccMag-meanFreq() -> FrequencyDomain.BodyAccelerationMagnitude.MeanFreq()
fBodyBodyAccJerkMag-mean() -> FrequencyDomain.BodyBodyAccelerationJerkMagnitude.Mean()
fBodyBodyAccJerkMag-std() -> FrequencyDomain.BodyBodyAccelerationJerkMagnitude.StandardDeviation()
fBodyBodyAccJerkMag-meanFreq() -> FrequencyDomain.BodyBodyAccelerationJerkMagnitude.MeanFreq()
fBodyBodyGyroMag-mean() -> FrequencyDomain.BodyBodyAngularSpeedMagnitude.Mean()
fBodyBodyGyroMag-std() -> FrequencyDomain.BodyBodyAngularSpeedMagnitude.StandardDeviation()
fBodyBodyGyroMag-meanFreq() -> FrequencyDomain.BodyBodyAngularSpeedMagnitude.MeanFreq()
fBodyBodyGyroJerkMag-mean() -> FrequencyDomain.BodyBodyAngularAccelerationMagnitude.Mean()
fBodyBodyGyroJerkMag-std() -> FrequencyDomain.BodyBodyAngularAccelerationMagnitude.StandardDeviation()
fBodyBodyGyroJerkMag-meanFreq() -> FrequencyDomain.BodyBodyAngularAccelerationMagnitude.MeanFreq()
angle(tBodyAccMean,gravity) -> angle(tBodyAccelerationMean,gravity)
angle(tBodyAccJerkMean),gravityMean) -> angle(tBodyAccelerationJerkMean),gravityMean)
angle(tBodyGyroMean,gravityMean) -> angle(tBodyAngularSpeedMean,gravityMean)
angle(tBodyGyroJerkMean,gravityMean) -> angle(tBodyAngularAccelerationMean,gravityMean)
angle(X,gravityMean) -> angle(X,gravityMean)
angle(Y,gravityMean) -> angle(Y,gravityMean)
angle(Z,gravityMean) -> angle(Z,gravityMean)
```

Activity (y data) factors have also been remapped as follows:
```
1 -> WALKING
2 -> WALKING UPSTAIRS
3 -> WALKING DOWNSTAIRS
4 -> SITTING
5 -> STANDING
6 -> LAYING
```

Analysis Process
----------------
1. The basis dataset was downloaded from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" and then unziped.
2. The subject, activity, test and train data are read in to R variables and merged to create an unique dataset.
3. This unique dataset is filtered (only test and train rows) for the feature variables described above.
4. Columns names are remapped to descriptive names for clear understanding as the mapping above.
5. A new tidy dataset is created with the average of each feature variable for each activity and each subject.
6. The data from this tidy data set is writen to the file "tidy.txt".
