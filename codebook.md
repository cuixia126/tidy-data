Original Dataset
=================

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
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.


New Dataset
=================

The above defines the original dataset.
This dataset has been modified to include only the mean() and std() for each feature.
The subject and activity(y) datasets have also been merged to this dataset.
New dataset:
<pre>
Feature                             Type            Value_Range

subject                    			integer			A number for each subject
activity                   			factor 			WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
tBodyAcc-mean()-X          			numeric			-1 to 1                                                                 
tBodyAcc-mean()-Y          			numeric			-1 to 1                                                                 
tBodyAcc-mean()-Z          			numeric			-1 to 1                                                                 
tBodyAcc-std()-X           			numeric			-1 to 1                                                                 
tBodyAcc-std()-Y           			numeric			-1 to 1                                                                 
tBodyAcc-std()-Z           			numeric			-1 to 1                                                                 
tGravityAcc-mean()-X       			numeric			-1 to 1                                                                 
tGravityAcc-mean()-Y       			numeric			-1 to 1                                                                 
tGravityAcc-mean()-Z       			numeric			-1 to 1                                                                 
tGravityAcc-std()-X        			numeric			-1 to 1                                                                 
tGravityAcc-std()-Y        			numeric			-1 to 1                                                                 
tGravityAcc-std()-Z        			numeric			-1 to 1                                                                 
tBodyAccJerk-mean()-X      			numeric			-1 to 1                                                                 
tBodyAccJerk-mean()-Y      			numeric			-1 to 1                                                                 
tBodyAccJerk-mean()-Z      			numeric			-1 to 1                                                                 
tBodyAccJerk-std()-X       			numeric			-1 to 1                                                                 
tBodyAccJerk-std()-Y       			numeric			-1 to 1                                                                 
tBodyAccJerk-std()-Z       			numeric			-1 to 1                                                                 
tBodyGyro-mean()-X         			numeric			-1 to 1                                                                 
tBodyGyro-mean()-Y         			numeric			-1 to 1                                                                 
tBodyGyro-mean()-Z         			numeric			-1 to 1                                                                 
tBodyGyro-std()-X          			numeric			-1 to 1                                                                 
tBodyGyro-std()-Y          			numeric			-1 to 1                                                                 
tBodyGyro-std()-Z          			numeric			-1 to 1                                                                 
tBodyGyroJerk-mean()-X     			numeric			-1 to 1                                                                 
tBodyGyroJerk-mean()-Y     			numeric			-1 to 1                                                                 
tBodyGyroJerk-mean()-Z     			numeric			-1 to 1                                                                 
tBodyGyroJerk-std()-X      			numeric			-1 to 1                                                                 
tBodyGyroJerk-std()-Y      			numeric			-1 to 1                                                                 
tBodyGyroJerk-std()-Z      			numeric			-1 to 1                                                                 
tBodyAccMag-mean()         			numeric			-1 to 1                                                                 
tBodyAccMag-std()          			numeric			-1 to 1                                                                 
tGravityAccMag-mean()      			numeric			-1 to 1                                                                 
tGravityAccMag-std()       			numeric			-1 to 1                                                                 
tBodyAccJerkMag-mean()     			numeric			-1 to 1                                                                 
tBodyAccJerkMag-std()      			numeric			-1 to 1                                                                 
tBodyGyroMag-mean()        			numeric			-1 to 1                                                                 
tBodyGyroMag-std()         			numeric			-1 to 1                                                                 
tBodyGyroJerkMag-mean()    			numeric			-1 to 1                                                                 
tBodyGyroJerkMag-std()     			numeric			-1 to 1                                                                 
fBodyAcc-mean()-X          			numeric			-1 to 1                                                                 
fBodyAcc-mean()-Y          			numeric			-1 to 1                                                                 
fBodyAcc-mean()-Z          			numeric			-1 to 1                                                                 
fBodyAcc-std()-X           			numeric			-1 to 1                                                                 
fBodyAcc-std()-Y           			numeric			-1 to 1                                                                 
fBodyAcc-std()-Z           			numeric			-1 to 1                                                                 
fBodyAccJerk-mean()-X      			numeric			-1 to 1                                                                 
fBodyAccJerk-mean()-Y      			numeric			-1 to 1                                                                 
fBodyAccJerk-mean()-Z      			numeric			-1 to 1                                                                 
fBodyAccJerk-std()-X       			numeric			-1 to 1                                                                 
fBodyAccJerk-std()-Y       			numeric			-1 to 1                                                                 
fBodyAccJerk-std()-Z       			numeric			-1 to 1                                                                 
fBodyGyro-mean()-X         			numeric			-1 to 1                                                                 
fBodyGyro-mean()-Y         			numeric			-1 to 1                                                                 
fBodyGyro-mean()-Z         			numeric			-1 to 1                                                                 
fBodyGyro-std()-X          			numeric			-1 to 1                                                                 
fBodyGyro-std()-Y          			numeric			-1 to 1                                                                 
fBodyGyro-std()-Z          			numeric			-1 to 1                                                                 
fBodyAccMag-mean()         			numeric			-1 to 1                                                                 
fBodyAccMag-std()          			numeric			-1 to 1                                                                 
fBodyBodyAccJerkMag-mean() 			numeric			-1 to 1                                                                 
fBodyBodyAccJerkMag-std()  			numeric			-1 to 1                                                                 
fBodyBodyGyroMag-mean()    			numeric			-1 to 1                                                                 
fBodyBodyGyroMag-std()     			numeric			-1 to 1                                                                 
fBodyBodyGyroJerkMag-mean()			numeric			-1 to 1                                                                 
fBodyBodyGyroJerkMag-std() 			numeric			-1 to 1                                                                 
</pre>