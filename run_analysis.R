##setwd("Your_Working_Directory")
##source("run_analysis.R")

library(plyr)

## 1.Download and unzip the dataset.

	filename <- "UCI_HAR_Dataset.zip"
	if (!file.exists(filename)){
	fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(fileURL, filename, method="curl")
	}  
  	if (!file.exists("UCI HAR Dataset")) { 
  	unzip(filename) 
  	}


## 2.Load the training and the test sets and merges them create one data set.
	# Trainning sets.
	train <- read.table("UCI HAR Dataset/train/X_train.txt")
	trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
	trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
	train <- cbind(trainSubjects, trainActivities, train)

	# Test sets.
	test <- read.table("UCI HAR Dataset/test/X_test.txt")
	testActivities <- read.table("UCI HAR Dataset/test/Y_test.txt")
	testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
	test <- cbind(testSubjects, testActivities, test)

	# Merge the training and the test sets.
	allData <- rbind(train,test)


## 3. Load the activity and feature info and extracts only the measurements on the mean and standard deviation for each measurement.

	# Load Features.
	features <- read.table("UCI HAR Dataset/features.txt")
	features[,2] <- as.character(features[,2])
	
	# Filter only columns with mean() or std() in their names.
	meanStdFeatures <- grep("[Mm]ean|[Ss]td", features[,2])
	
	# Subset allData (except the 2 first columns) with the filtered columns.
	allData <- allData[, c(1,2,(meanStdFeatures + 2))]
	

## 4.Uses descriptive activity names to name the activities in the data set.

	# Load Activity Labels.
	activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
	activityLabels[,2] <- as.character(activityLabels[,2])
	
	# Update row values with activity names.
	allData[,2] <- activityLabels[allData[, 2], 2]
	
	# Name activity column.
	names(allData)[2] <- "Activity"
	

## 5.Appropriately labels the data set with descriptive variable names.
	
	# Name subject column.
	names(allData)[1] <- "Subject"
		
	# Name features columns.
	names(allData)[3:(length(meanStdFeatures)+2)] <- features[meanStdFeatures, 2]
	
	print(features[meanStdFeatures, 2])
	        
	# Make descriptive variables names for features.
	names(allData) <- gsub('^t',"TimeDomain.",names(allData))
	names(allData) <- gsub('^f',"FrequencyDomain.",names(allData))
	names(allData) <- gsub('-mean',".Mean",names(allData))
	names(allData) <- gsub('-std',".StandardDeviation",names(allData))
	names(allData) <- gsub('Mag',"Magnitude",names(allData))
	names(allData) <- gsub('Freq\\.',"Frequency.",names(allData))
	names(allData) <- gsub('Freq$',"Frequency",names(allData))        
	names(allData) <- gsub('Acc',"Acceleration",names(allData))
	names(allData) <- gsub('GyroJerk',"AngularAcceleration",names(allData))
	names(allData) <- gsub('Gyro',"AngularSpeed",names(allData))
        
## 6. From the data set in step 5, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

      tidyDt <- ddply(allData, .(Subject, Activity), function(x) colMeans(x[,3:88]))
      write.table(tidyDt, "tidy.txt", row.names=FALSE, quote=FALSE)
