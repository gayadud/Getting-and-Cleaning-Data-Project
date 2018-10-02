library(dplyr)

##set the working directory
setwd("C:/Users/vinip/Desktop/Gayatri/DATA SCIENTIST COURSE/Getting and Cleaning Data/Project")

##download the zip file
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl, "data.zip")

##unzip the downloaded file
Data <- unzip("data.zip")

##set working directory to the downloaded dataset
setwd("C:/Users/vinip/Desktop/Gayatri/DATA SCIENTIST COURSE/Getting and Cleaning Data/Project/Data/UCI HAR Dataset")
directory_path <- "C:/Users/vinip/Desktop/Gayatri/DATA SCIENTIST COURSE/Getting and Cleaning Data/Project/Data/UCI HAR Dataset"

##read data
activity_label <- read.table("activity_labels.txt")
##assign column names
colnames(activity_label) <- c("activity_id", "activity_label")

features <- read.table("features.txt")

#read train dataset
train_subjects <- read.table(file.path(directory_path, "train", "subject_train.txt"))
train_Values_X <- read.table(file.path(directory_path, "train", "X_train.txt"))
train_activity_Y <- read.table(file.path(directory_path, "train", "Y_train.txt"))
#making one train dataset
train <- cbind(train_subjects,train_activity_Y,train_Values_X)

#read train dataset
test_subjects <- read.table(file.path(directory_path, "test", "subject_test.txt"))
test_Values_X <- read.table(file.path(directory_path, "test", "X_test.txt"))
test_activity_Y <- read.table(file.path(directory_path, "test", "Y_test.txt"))

#making one test dataset
test <- cbind(test_subjects,test_activity_Y,test_Values_X)

############################################################################################################
##Step 1. Merges the training and the test sets to create one data set
############################################################################################################
##merging all dataset
merge_data <- rbind(train, test)

##assign column names to merge_data
colnames(merge_data) <- c("subject", "activity", as.character(features[ ,2]))

#removing individual datasets
rm(train_subjects, train_activity_Y, train_Values_X, test_subjects, test_activity_Y,test_Values_X)

############################################################################################################
##Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.
############################################################################################################

##finding columns with mean and std values
col_indices <- grepl("subject|activity|mean|std", colnames(merge_data))

##keeping only those columns with mean and std
merge_data <- merge_data[,col_indices]

############################################################################################################
##Step 3. Uses descriptive activity names to name the activities in the data set
############################################################################################################

##converting activity column to factors and replacing activity numbers with names
merge_data$activity <- factor(merge_data$activity, levels=activity_label[,1], labels = activity_label[,2])

############################################################################################################
##Step 4. Appropriately labels the data set with descriptive variable names.
############################################################################################################

##get column names of merge_data
merge_data_colnames <- colnames(merge_data)

merge_data_colnames <- gsub("[\\(\\)-]", "", merge_data_colnames)

##expand abbreviations
merge_data_colnames <- gsub("Acc", "Accelerometer", merge_data_colnames)
merge_data_colnames <- gsub("Gyro", "Gyroscope", merge_data_colnames)
merge_data_colnames <- gsub("Mag", "Magnitude", merge_data_colnames)
merge_data_colnames <- gsub("Freq", "Frequency", merge_data_colnames)
merge_data_colnames <- gsub("std", "StandardDeviation", merge_data_colnames)
merge_data_colnames <- gsub("mean", "Mean", merge_data_colnames)
merge_data_colnames <- gsub("^t", "TimeDomain", merge_data_colnames)
merge_data_colnames <- gsub("^f", "FrequencyDomain", merge_data_colnames)

##remove repetitive word
merge_data_colnames <- gsub("BodyBody", "Body", merge_data_colnames)

##use new column names
colnames(merge_data) <- merge_data_colnames

############################################################################################################
##Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
############################################################################################################

##group by subject and activity and summarise using mean
second_data <- summarize_all(group_by(merge_data, subject,activity), funs(mean))

##output the second data
write.table(second_data,"tidy_data.txt")


