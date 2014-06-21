##GACD_Course_Project
===================

###Getting and Cleaning Data Course Project


###This README describes *run_analysis.R* contained in this repository 

The program assumes the directory *UCI HAR Dataset* is in the working directory. 


The program reads data from the *UCI HAR Dataset* and performs rudimentary data cleaning to providea tidy data set with:
1. selected data on the mean() and std() measurements 
2. Labels activities
2. combined test and training data files for all 30 subjects
3. adds descriptive activity names and labels data columns

For reference the data comes from here

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


###>
###DESCRIPTION OF THE PROGRAM


#####SECTION ONE: Set the working directory and check to see if data are present.
Sets the working directory and does a check to see if the data set are present.

#####SECTION TWO: Read data files

The below is a list of the files in the UCI HAR Dataset. Those in *BOLD* are read in

*activity-labels.txt* "features-info.txt"   *features.txt*        "OutputData.txt"      "OutputData2.txt"    
"OutputData3.txt"     "OututData.txt"       "OututData2.txt"      "README.txt"          "test"               
"train" 

The files in the directory *test* which are read are:
 "Inertial Signals" *subject-test.txt* *X-test.txt* *y-test.txt*   

similar for *train*

the program uses *read.table* to import the data

#####SECTION THREE: Select the data

select the dat using the *grepl* instruction based on the selection "-mean()" and "-std()" and comparing to the features.txt data. 
This is intended to select only mean and standard devaition measurements

These lists are combined using | ("or") to form a superset of "desired columns" of data.

cols-I-want - mean-cols | std-cols

#####SECTION FOUR: combine the raw data
Bind the data into the first output data frame
First binding rows of data of the train and test data sets
then combining column data of users and activities

#####SECTION FIVE: Name the data
Name the columns of data 

Take the final result adn store that as a parameter Tidy-Data-One. 
That file is not speciically requested by the assignemnt but is an important intermeidate point. 
This might be useful for later debug. 

#####SECTION SIX: create the prescribed tiday data set of means
Create the prescribed tidy data set by using the aggregate command to average over common subjects and activities. 

Output the data to the file ""Tidy___Data___Final""








