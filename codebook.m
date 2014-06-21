###Codebook for run_analysis and OutputData.txt
This describes the variables in the output file are describe below. For a desripbiton of the method the raw data are combined see README.M


The data file contains 180 rows, corresponding to the 6 measured activities for the 30 subjects. 

The subjects are identified numerically 1-30.
The activities are named

Column one of the data
is the subject number

Column two of the data
is the activity. The activities are:
           
1            WALKING
2   WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4            SITTING
5           STANDING
6             LAYING


The next 66 columns are numeric measurements with the following names
"tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"           "tBodyAcc-mean()-Z"           "tBodyAcc-std()-X"           
"tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"            "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"       
"tGravityAcc-mean()-Z"        "tGravityAcc-std()-X"         "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"        
"tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"       "tBodyAccJerk-mean()-Z"       "tBodyAccJerk-std()-X"       
"tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"        "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"         
"tBodyGyro-mean()-Z"          "tBodyGyro-std()-X"           "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"          
"tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"      "tBodyGyroJerk-mean()-Z"      "tBodyGyroJerk-std()-X"      
"tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"       "tBodyAccMag-mean()"          "tBodyAccMag-std()"          
"tGravityAccMag-mean()"       "tGravityAccMag-std()"        "tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"      
"tBodyGyroMag-mean()"         "tBodyGyroMag-std()"          "tBodyGyroJerkMag-mean()"     "tBodyGyroJerkMag-std()"     
"fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"           "fBodyAcc-mean()-Z"           "fBodyAcc-std()-X"           
"fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"            "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"      
"fBodyAccJerk-mean()-Z"       "fBodyAccJerk-std()-X"        "fBodyAccJerk-std()-Y"        "fBodyAccJerk-std()-Z"       
"fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"          "fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"          
"fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"           "fBodyAccMag-mean()"          "fBodyAccMag-std()"          
"fBodyBodyAccJerkMag-mean()"  "fBodyBodyAccJerkMag-std()"   "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroMag-std()"     
"fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()" 


Here is a sample of the output data:
Tidy_Data_Final[15:25, 1:8]
   Subject Activity tBodyAcc-mean()-X tBodyAcc-mean()-Y tBodyAcc-mean()-Z tBodyAcc-std()-X tBodyAcc-std()-Y tBodyAcc-std()-Z
15      15   LAYING         0.2894757       -0.01662965        -0.1185302       -0.9722556       -0.9627594       -0.9295868
16      16   LAYING         0.2742272       -0.01661035        -0.1073105       -0.9736914       -0.9430612       -0.9654903
17      17   LAYING         0.2697801       -0.01684620        -0.1070063       -0.9729606       -0.9447929       -0.9534767
18      18   LAYING         0.2746916       -0.01739377        -0.1076989       -0.9845276       -0.9861609       -0.9876587
19      19   LAYING         0.2726537       -0.01714269        -0.1089815       -0.9650196       -0.9734500       -0.9846728
20      20   LAYING         0.2395079       -0.01444063        -0.1042743       -0.9622491       -0.9640982       -0.9725720
21      21   LAYING         0.2713255       -0.01842330        -0.1032538       -0.9550199       -0.9569594       -0.9456538
22      22   LAYING         0.2799597       -0.01426299        -0.1108009       -0.9477353       -0.9132763       -0.9429458
23      23   LAYING         0.2740380       -0.02165538        -0.1042568       -0.9567564       -0.9763098       -0.9732235
24      24   LAYING         0.2728505       -0.01735552        -0.1072362       -0.9679840       -0.9831265       -0.9735670
25      25   LAYING         0.2507918       -0.01889437        -0.1004288       -0.9091165       -0.6917707       -0.7172620
