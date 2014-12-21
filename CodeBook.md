- activity
Name of the activity. The are six possible cases:
LAYING             SITTING            STANDING          
WALKING            WALKING_DOWNSTAIRS WALKING_UPSTAIRS

- subject
Subject identifier (from 1 to 30).

- 66 signal variables
All of them are normalized and bounded within [-1,1].
Let's use 

1) '-XYZ' to denote the signal's direction;

2) "t" prefix to denote time source and "f" prefix to denote the result of the Fast Fourier Transform;

3) mean() - Mean value, std() - Standart deviation.

After this we will have the following group of measures:

"BodyAcc-XYZ". Body acceleration signal;

"GravityAcc-XYZ". Gravity acceleration signal;

"BodyAccJerk-XYZ". Acceleration derivative;

"BodyGyro-XYZ". Body signals from gyroscope (angular velocity);

"BodyGyroJerk-XYZ". Angular velocity derivative;

"BodyAccMag". Magnitude of the body acceleration;

"GravityAccMag". Magnitude of the gravity acceleration;

"BodyAccJerkMag". Magnitude of the acceleration derivative;

"BodyGyroMag". Magnitude of the angular velocity;

"BodyGyroJerkMag". Magnitude of the angular velocity derivative.
