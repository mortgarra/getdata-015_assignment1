Features
========

I truthfully don't claim to know what each of these measurements actually represents.  I'm including the original documentation for these feature vectors in the hope that it will make more sense to the reader than the transcriber.  I've removed irrelevant fields that have been filtered according to my processing.

The actual data within tidy_data.txt are the aggregate averages of each variable measured by subject and activity.  The data selected to be included within this data set were chosen based upon the presence of either "mean()" or "std()" within the variable labels for the source data set.  These variables were sourced for the final data representation.

Background
==========


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

Complete Feature List
=====================

The complete list of features include the following variables (and rough descriptions of what they are)

Field | Meaning
----- | -------
Subject | Identifier of subject participating in the study
Activity | The type of activity performed
tBodyAcc-mean()-X | tBodyAcc on X-axis average of averages
tBodyAcc-mean()-Y | tBodyAcc on Y-axis average of averages
tBodyAcc-mean()-Z | tBodyAcc on Z-axis average of averages
tBodyAcc-std()-X | tBodyAcc on X-axis average of standard deviations
tBodyAcc-std()-Y | tBodyAcc on Y-axis average of standard deviations
tBodyAcc-std()-Z | tBodyAcc on Z-axis average of standard deviations
tGravityAcc-mean()-X | tGravityAcc on X-axis average of averages
tGravityAcc-mean()-Y | tGravityAcc on Y-axis average of averages
tGravityAcc-mean()-Z | tGravityAcc on Z-axis average of averages
tGravityAcc-std()-X | tGravityAcc on X-axis average of standard deviations
tGravityAcc-std()-Y | tGravityAcc on Y-axis average of standard deviations
tGravityAcc-std()-Z | tGravityAcc acceleration on Z-axis average of standard deviations
tBodyAccJerk-mean()-X | tBodyAccJerk on X-axis average of averages
tBodyAccJerk-mean()-Y | tBodyAccJerk on Y-axis average of averages
tBodyAccJerk-mean()-Z | tBodyAccJerk on Z-axis average of averages
tBodyAccJerk-std()-X | tBodyAccJerk on X-axis average of standard deviations
tBodyAccJerk-std()-Y | tBodyAccJerk on Z-axis average of standard deviations
tBodyAccJerk-std()-Z | tBodyAccJerk on Z-axis average of standard deviations
tBodyGyro-mean()-X | tBodyGyro on X-axis average of averages
tBodyGyro-mean()-Y | tBodyGyro on Y-axis average of averages
tBodyGyro-mean()-Z | tBodyGyro on Z-axis average of averages
tBodyGyro-std()-X | tBodyGyro on X-axis average of standard deviations
tBodyGyro-std()-Y | tBodyGyro on Y-axis average of standard deviations
tBodyGyro-std()-Z | tBodyGyro on Z-axis average of standard deviations
tBodyGyroJerk-mean()-X | tBodyGyroJerk on X-axis average of average
tBodyGyroJerk-mean()-Y | tBodyGyroJerk on Y-axis average of average
tBodyGyroJerk-mean()-Z | tBodyGyroJerk on Z-axis average of average
tBodyGyroJerk-std()-X | tBodyGyroJerk on X-axis average of standard deviations
tBodyGyroJerk-std()-Y | tBodyGyroJerk on Y-axis average of standard deviations
tBodyGyroJerk-std()-Z | tBodyGyroJerk on Z-axis average of standard deviations
tBodyAccMag-mean() | tBodyAccMag average of averages
tBodyAccMag-std() | tBodyAccMag average of standard deviations
tGravityAccMag-mean() | tGravityAccMag average of average
tGravityAccMag-std() | tGravityAccMag average of standard deviations
tBodyAccJerkMag-mean() | tBodyAccJerkMag average of averages
tBodyAccJerkMag-std() | tBodyAccJerkMag average of standard deviations
tBodyGyroMag-mean() | tBodyGyroMag average of averages
tBodyGyroMag-std() | tBodyGyroMag average of standard deviations
tBodyGyroJerkMag-mean() | tBodyGyroJerkMag average of averages
tBodyGyroJerkMag-std() | tBodyGyroJerkMag average of standard deviations
fBodyAcc-mean()-X | fBodyAcc on X-axis average of average
fBodyAcc-mean()-Y | fBodyAcc on Y-axis average of average
fBodyAcc-mean()-Z | fBodyAcc on Z-axis average of average
fBodyAcc-std()-X | fBodyAcc on X-axis average of standard deviations
fBodyAcc-std()-Y | fBodyAcc on Y-axis average of standard deviations
fBodyAcc-std()-Z | fBodyAcc on Z-axis average of standard deviations
fBodyAcc-meanFreq()-X | fBodyAcc on X-axis average of average
fBodyAcc-meanFreq()-Y | fBodyAcc on Y-axis average of average
fBodyAcc-meanFreq()-Z | fBodyAcc on Z-axis average of average
fBodyAccJerk-mean()-X | fBodyAccJerk on X-axis average of average
fBodyAccJerk-mean()-Y | fBodyAccJerk on Y-axis average of average
fBodyAccJerk-mean()-Z | fBodyAccJerk on Z-axis average of average
fBodyAccJerk-std()-X | fBodyAccJerk on X-axis average of standard deviations
fBodyAccJerk-std()-Y | fBodyAccJerk on Y-axis average of standard deviations
fBodyAccJerk-std()-Z | fBodyAccJerk on Z-axis average of standard deviations
fBodyAccJerk-meanFreq()-X | fBodyAccJerk on X-axis average of average
fBodyAccJerk-meanFreq()-Y | fBodyAccJerk on Y-axis average of average
fBodyAccJerk-meanFreq()-Z | fBodyAccJerk on Z-axis average of average
fBodyGyro-mean()-X | fBodyGyro on X-axis average of average
fBodyGyro-mean()-Y | fBodyGyro on Y-axis average of average
fBodyGyro-mean()-Z | fBodyGyro on Z-axis average of average
fBodyGyro-std()-X | fBodyGyro on X-axis average of standard deviations
fBodyGyro-std()-Y | fBodyGyro on Y-axis average of standard deviations
fBodyGyro-std()-Z | fBodyGyro on Z-axis average of standard deviations
fBodyGyro-meanFreq()-X | fBodyGyro on X-axis average of average
fBodyGyro-meanFreq()-Y | fBodyGyro on Y-axis average of average
fBodyGyro-meanFreq()-Z | fBodyGyro on Z-axis average of average
fBodyAccMag-mean() | fBodyAccMag average of averages
fBodyAccMag-std() | fBodyAccMag average of standard deviations
fBodyAccMag-meanFreq() | fBodyAccMag average of average frequences
fBodyBodyAccJerkMag-mean() | fBodyBodyAccJerkMag average of averages
fBodyBodyAccJerkMag-std() | fBodyBodyAccJerkMag average of standard deviations
fBodyBodyAccJerkMag-meanFreq() | fBodyBodyAccJerkMag average of average frequencies
fBodyBodyGyroMag-mean() | fBodyBodyGyroMag average of averages
fBodyBodyGyroMag-std() | fBodyBodyGyroMag average of standard deviations
fBodyBodyGyroMag-meanFreq() | fBodyBodyGyroMag average of average frequencies
fBodyBodyGyroJerkMag-mean() | fBodyBodyGyroJerkMag average of averages
fBodyBodyGyroJerkMag-std() | fBodyBodyGyroJerkMag average of standard deviations
fBodyBodyGyroJerkMag-meanFreq()| fBodyBodyGyroJerkMag average of averages