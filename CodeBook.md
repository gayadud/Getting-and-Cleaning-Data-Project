---
title: "CodeBook for Getting and Cleaning Project"
output: html_document
---
The data set that this code book relates to is tidy_data.txt file of this repository.

See the README.md file of this repository for more information on this data set.

## Data

tidy_data.txt data file is a text file, containing space-separated values.

The first row contains the names of the variables and the following rows contain the values of these variables.

## Variables
# Identifiers

subject - The ID of the test subject. Integer ranging from 1 to 30.
activity - The type of activity performed when the corresponding measurements were taken.
           String with 6 possible values:

            WALKING: subject was walking
            WALKING_UPSTAIRS: subject was walking upstairs
            WALKING_DOWNSTAIRS: subject was walking downstairs
            SITTING: subject was sitting
            STANDING: subject was standing
            LAYING: subject was laying

# Measurements

All measurements are floating-point values, normalised and bounded within [-1,1].

Time-domain signals

Average time-domain body acceleration in the X, Y and Z directions:

    timeDomainBodyAccelerometerMeanX
    timeDomainBodyAccelerometerMeanY
    timeDomainBodyAccelerometerMeanZ
Standard deviation of the time-domain body acceleration in the X, Y and Z directions:
    
    timeDomainBodyAccelerometerStandardDeviationX
    timeDomainBodyAccelerometerStandardDeviationY
    timeDomainBodyAccelerometerStandardDeviationZ
Average time-domain gravity acceleration in the X, Y and Z directions:
    
    timeDomainGravityAccelerometerMeanX
    timeDomainGravityAccelerometerMeanY
    timeDomainGravityAccelerometerMeanZ
Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:
    
    timeDomainGravityAccelerometerStandardDeviationX
    timeDomainGravityAccelerometerStandardDeviationY
    timeDomainGravityAccelerometerStandardDeviationZ
Average time-domain body acceleration jerk in the X, Y and Z directions:
    
    timeDomainBodyAccelerometerJerkMeanX
    timeDomainBodyAccelerometerJerkMeanY
    timeDomainBodyAccelerometerJerkMeanZ
Standard deviation of the time-domain body acceleration jerk in the X, Y and Z directions:
    
    timeDomainBodyAccelerometerJerkStandardDeviationX
    timeDomainBodyAccelerometerJerkStandardDeviationY
    timeDomainBodyAccelerometerJerkStandardDeviationZ
Average time-domain body angular velocity in the X, Y and Z directions:
    
    timeDomainBodyGyroscopeMeanX
    timeDomainBodyGyroscopeMeanY
    timeDomainBodyGyroscopeMeanZ
Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:
    
    timeDomainBodyGyroscopeStandardDeviationX
    timeDomainBodyGyroscopeStandardDeviationY
    timeDomainBodyGyroscopeStandardDeviationZ
Average time-domain body angular velocity jerk in the X, Y and Z directions:
    
    timeDomainBodyGyroscopeJerkMeanX
    timeDomainBodyGyroscopeJerkMeanY
    timeDomainBodyGyroscopeJerkMeanZ
Standard deviation of the time-domain body angular velocity jerk in the X, Y and Z directions:
   
    timeDomainBodyGyroscopeJerkStandardDeviationX
    timeDomainBodyGyroscopeJerkStandardDeviationY
    timeDomainBodyGyroscopeJerkStandardDeviationZ
Average and standard deviation of the time-domain magnitude of body acceleration:
    
    timeDomainBodyAccelerometerMagnitudeMean
    timeDomainBodyAccelerometerMagnitudeStandardDeviation
Average and standard deviation of the time-domain magnitude of gravity acceleration:
    
    timeDomainGravityAccelerometerMagnitudeMean
    timeDomainGravityAccelerometerMagnitudeStandardDeviation
Average and standard deviation of the time-domain magnitude of body acceleration jerk:
    
    timeDomainBodyAccelerometerJerkMagnitudeMean
    timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation
Average and standard deviation of the time-domain magnitude of body angular velocity:
    
    timeDomainBodyGyroscopeMagnitudeMean
    timeDomainBodyGyroscopeMagnitudeStandardDeviation
Average and standard deviation of the time-domain magnitude of body angular velocity jerk:
   
    timeDomainBodyGyroscopeJerkMagnitudeMean
    timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation
Frequency-domain signals

Average frequency-domain body acceleration in the X, Y and Z directions:
    
    frequencyDomainBodyAccelerometerMeanX
    frequencyDomainBodyAccelerometerMeanY
    frequencyDomainBodyAccelerometerMeanZ
Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:
    
    frequencyDomainBodyAccelerometerStandardDeviationX
    frequencyDomainBodyAccelerometerStandardDeviationY
    frequencyDomainBodyAccelerometerStandardDeviationZ
Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:
   
    frequencyDomainBodyAccelerometerMeanFrequencyX
    frequencyDomainBodyAccelerometerMeanFrequencyY
    frequencyDomainBodyAccelerometerMeanFrequencyZ
Average frequency-domain body acceleration jerk in the X, Y and Z directions:
   
    frequencyDomainBodyAccelerometerJerkMeanX
    frequencyDomainBodyAccelerometerJerkMeanY
    frequencyDomainBodyAccelerometerJerkMeanZ
Standard deviation of the frequency-domain body acceleration jerk in the X, Y and Z directions:
   
    frequencyDomainBodyAccelerometerJerkStandardDeviationX
    frequencyDomainBodyAccelerometerJerkStandardDeviationY
    frequencyDomainBodyAccelerometerJerkStandardDeviationZ
Weighted average of the frequency components of the frequency-domain body acceleration jerk in the X, Y and Z directions:
    
    frequencyDomainBodyAccelerometerJerkMeanFrequencyX
    frequencyDomainBodyAccelerometerJerkMeanFrequencyY
    frequencyDomainBodyAccelerometerJerkMeanFrequencyZ
Average frequency-domain body angular velocity in the X, Y and Z directions:
    
    frequencyDomainBodyGyroscopeMeanX
    frequencyDomainBodyGyroscopeMeanY
    frequencyDomainBodyGyroscopeMeanZ
Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:
    
    frequencyDomainBodyGyroscopeStandardDeviationX
    frequencyDomainBodyGyroscopeStandardDeviationY
    frequencyDomainBodyGyroscopeStandardDeviationZ
Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:
    
    frequencyDomainBodyGyroscopeMeanFrequencyX
    frequencyDomainBodyGyroscopeMeanFrequencyY
    frequencyDomainBodyGyroscopeMeanFrequencyZ
Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:
    
    frequencyDomainBodyAccelerometerMagnitudeMean
    frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
    frequencyDomainBodyAccelerometerMagnitudeMeanFrequency
Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk :
    
    frequencyDomainBodyAccelerometerJerkMagnitudeMean
    frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
    frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency
Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:
    
    frequencyDomainBodyGyroscopeMagnitudeMean
    frequencyDomainBodyGyroscopeMagnitudeStandardDeviation
    frequencyDomainBodyGyroscopeMagnitudeMeanFrequency
Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk :
    
    frequencyDomainBodyGyroscopeJerkMagnitudeMean
    frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
    frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency

#Transformations

The following transformations were applied to the source data:

1. The training and test sets were merged to create one data set.
2. The measurements on the mean and standard deviation were extracted for each measurement, and the others were discarded.
3. The activity identifiers were replaced with descriptive activity names.
4. The variable names were replaced with descriptive variable names, using the following set of rules:
   Special characters (i.e. (, ), and -) were removed
   The initial f and t were expanded to frequencyDomain and timeDomain respectively.
   Acc, Gyro, Mag, Freq, mean, and std were replaced with Accelerometer, Gyroscope, Magnitude, Frequency, Mean, and         StandardDeviation respectively.
   Replaced BodyBody with Body.
5. From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.

The collection of the source data and the transformations listed above were implemented by the run_analysis.R.
