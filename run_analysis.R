
##This is a program for the course project in "Getting and Cleaning Data" on Coursera.
##The program reads in files from a specified dataset and does a prescribed data cleaning exercise. 


##SECTION 1: SET THE WD AND ENSURE DATA ARE THERE

## set the WD
## THIS PROGRAM ASSUMES THE UCI HAR Dataset Folder is in the working directory, if not the program will return an error

files <- list.files()
if ( any(files == "UCI HAR Dataset")) {print("UCI HAR Dataset found")} else  {stop("UCI HAR Dataset not found in working directory")}

##SECTION 2: READ THE DATA
        
        activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt")
        
        features<-read.table("UCI HAR Dataset/features.txt")
        
        ##Read test subject data
        subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
        X_test<-read.table("UCI HAR Dataset/test/X_test.txt")
        Y_test<-read.table("UCI HAR Dataset/test/Y_test.txt")

        ##Read train subject data
        subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")
        X_train<-read.table("UCI HAR Dataset/train/X_train.txt")
        Y_train<-read.table("UCI HAR Dataset/train/Y_train.txt")

        ##Get activity names
        activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
        features <- read.table("UCI HAR Dataset/features.txt")

## all files are now loaded

## SECTION 3: SELECT DATA COLUMNS

## I dedcided to select data columns first since binding all the data together first would make the files even bigger.
## This method reduces file size first before growing it. 

## Find data rows with either mean or std and those with meanFreq

        mean_cols <- grepl("-mean", features[,2])
        std_cols <- grepl("-std", features[,2])
        meanFreq_cols <- grepl("-meanFreq", features[,2])

##      combine those lists into the columns I want
##      by or-ing together the man and std columns and then anding with the converse of the meanFreq columns.

        cols_I_want <- (mean_cols | std_cols) & !meanFreq_cols

##      Create the list of desired columns by selecting those I want

        desired_columns <- which(cols_I_want == TRUE)
        nmax = length(desired_columns)

##      reduce tables to only those columns I want
        X_train <- X_train[,desired_columns]
        X_test <- X_test[,desired_columns]

##      select the names of desired columns
        measurement_list <- features[desired_columns, 2]

        ## print(measurement_list[1:10])  ##this is a debug print statement to ensure desired columns are correct.

## SECTION 4: Bind Data into Output data.frame

##      first step is to bind rows

        Mean_Std <- rbind(X_train,X_test)
        Activity <- rbind(Y_train,Y_test)
        Subject <- rbind(subject_train, subject_test)

#then bind columns

        Output <- cbind(Subject, Activity, Mean_Std)

## SECTION 5: Name the data

        colnames(Output) <- c("Subject", "Activity", as.vector(measurement_list))

## Replace activity names (this is a little clunky but it is clearer what is going on)
        Output$Activity <- replace(Output$Activity, Output$Activity ==1, as.character(activity_labels[1,2]))
        Output$Activity <- replace(Output$Activity, Output$Activity ==2, as.character(activity_labels[2,2]))
        Output$Activity <- replace(Output$Activity, Output$Activity ==3, as.character(activity_labels[3,2]))
        Output$Activity <- replace(Output$Activity, Output$Activity ==4, as.character(activity_labels[4,2]))
        Output$Activity <- replace(Output$Activity, Output$Activity ==5, as.character(activity_labels[5,2]))
        Output$Activity <- replace(Output$Activity, Output$Activity ==6, as.character(activity_labels[6,2]))

##Save intermediate Output file in variable Tidy_Data_One

        Tidy_Data_One <- Output

        ##print(Tidy_Data_One[1:5,1:5])  ## this is a debug print statement to ensure Tidy_Data_One is as expected

## SECTION 6: Reduce the data set

##      do this by using the aggregate to take the mean of all lines with user adn activity in common
##      namx is the number of selected columns. Add 2 for the subject and activity.

        Tidy_Data_Final <- aggregate(Output[,3:(nmax+2)], by =list(Output[,1], Output[,2]), FUN = mean, na.rm = TRUE)
## reassign column names (not sure why I have to do this)
        colnames(Tidy_Data_Final)<- c("Subject", "Activity", as.vector(measurement_list))

## write the data
        write.table(Tidy_Data_Final, "OutputData.txt")
        print ("Output written to file OutputData.txt")

## this is a check which can be interrogated interactively in the r-console
## check2 reads OutputData to verify the proper data has been read and is usable. 

        check2 <- read.table("OutputData.txt")
