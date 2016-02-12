# Getting-and-Cleaning-Data

The purpose of this project is to demonstrate abilities to collect, work with, and clean a data set.
The goal is to prepare tidy data that can be used for later analysis.

The R script, `run_analysis.R`, created for this Project does the following:

1. Download dataset from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" if it does not already exist in the working directory and unzip file if not yet unziped.
2. Load the training and the test sets and merges them create one data set called allData.
3. Load the activity and feature info and extracts only the measurements on the mean and standard deviation for each measurement.
4. Uses descriptive activity names to name the activities in the data set.
5. Appropriately labels the data set with descriptive variable names.
6. From the data set in step 5, creates a second, independent tidy data set with the average of each variable for each activity and each subject and write it to the file "tidy.txt" in the working directory.
 
To run the script, `run_analysis.R`, copy it to your working directory and, in R, type source("run_analysis.R"). 
After execution, the file "tidy.txt" will be in your working directory.


# Additional Information

Additional information about the variables, data and transformations is documented inside the `CodeBook.md`  file.
