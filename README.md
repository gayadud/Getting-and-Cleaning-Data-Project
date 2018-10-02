# Getting-and-Cleaning-Data-Project

The purpose of this project is to demonstrate the ability to collect, work with, and clean a dataset. The goal is to prepare tidy data that can be used for later analysis. 
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
The data was collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This repository contains the following files:
  README.md: provides an overview of the dataset and how it was created.
  tidy_data.txt: contains the created dataset.
  CodeBook.md: describes the contents of the dataset.
  run_analysis.R: R script that was used to create the dataset.

The R script "run_analysis.R"" can be used to create the dataset. It downloads the source dataset and transforms it to produce the final data set by implementing the following steps-

1. Download and unzip source data.
2. Read the data into R.
3. Merge the training and the test datasets to create one dataset.
4. Extract only the measurements on the mean and standard deviation for each measurement.
5. Use descriptive activity names to name the activities in the dataset.
6. Appropriately label the dataset with descriptive variable names.
7. Create a second, independent tidy set with the average of each variable for each activity and each subject.
8. Write the data set to the tidy_data.txt file.

This script requires the dplyr package.
