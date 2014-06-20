GACD_Course_Project
===================

#Getting and Cleaning Data Course Project


##This describes the R program run_Analysis.R contained in this file. 


The program reads data from the _UCI HAR Dataset_ 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

_Citation:_
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

#####SECTION ONE
The program does a check to see if the data set are present.

#####SECTION TWO: Read data files

The below is a list of the files in the UCI HAR Dataset. Those in *BOLD* are read in

*"activity-labels.txt"* "features-info.txt"   *"features.txt"*        "OutputData.txt"      "OutputData2.txt"    
"OutputData3.txt"     "OututData.txt"       "OututData2.txt"      "README.txt"          "test"               
"train" 

The files in the directory *test* which are read are:
 "Inertial Signals" *"subject_test.txt"* *"X_test.txt"* *"y_test.txt"*   

similar for *train*

###SECTION THREE

select the dat using the grepl instruction based on the selection "-mean()" and "-std()"
This is intended to select only mean and standard devaition measurements

These lists are combined using | ("or") to form a superset of "desired columns" of data.

#####SECTION FOUR
Bind the data into the first output data frame
First binding rows of data of the train and test data sets
then combining column data of users and activities

#####SECTION FIVE
Name the columns of data 

Take the final result adn store that as a parameter Tidy_Data_One. This might be useful for debug. 

#####SECTION SIX
Create the prescribed tidy data set by using the aggregate command to average over common subjects and activities. 

Output the data to the file Tidy_Data_Final









