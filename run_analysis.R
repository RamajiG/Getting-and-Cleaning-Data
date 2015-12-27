library(data.table)
# 
maxRows <- -1
#
dirPath<-"C:/Downloads/Courses/JohnHopkins/GettingAndCleaningData/project/UC1 HAR Dataset/"
setwd(dirPath)
#
# Read the features file to get the labels and corresponding column numbers.
#
features<-read.table("features.txt",sep="",stringsAsFactors=FALSE,nrows=-1)
#
# We need to consider only columns related to 'mean()' and 'std()'
#
neededCols<-features[features$V2 %like% ".mean[()]|.std[()]",]
#
col_Numbers<-c(neededCols[,1])
col_Names<-c(neededCols[,2])
# 
# Read the activity lables from 'activity' file
#
activityLabels <- read.table("activity_labels.txt", stringsAsFactors=FALSE )
#
# Data read function
#
readData <- function( dataType ) {

  xPath <- paste(dirPath, dataType, "/X_", dataType, ".txt",sep="")
  yPath <- paste(dirPath, dataType, "/Y_", dataType, ".txt",sep="")
  subjectPath <- paste(dirPath, dataType, "/subject_", dataType, ".txt",sep="")

  fullData <- read.table(xPath, sep="", stringsAsFactors=FALSE, nrows=maxRows)[,col_Numbers]
  yData <- read.table(yPath, nrows=maxRows,col.names=c("number"))
  subjectData <- read.table(subjectPath, nrows=maxRows,col.names=c("subject"))
  colnames(fullData) <- col_Names

  fullData$activity <- activityLabels[yData$number,2]
  fullData$subject <- subjectData$subject
  fullData
}
#
# Read "train" data and "test" data and bind them
#
all <- rbind(readData("train"),readData("test"))
#
# 'all' is a data frame. Convert this to data table for performance
#
dt <- data.table(all)
#
## Set "activity" and "subject" as keys over which we want to group
#
setkey(dt,"activity","subject")
#
## Calculate the mean over the keys on all the columns
#
tidyData <-dt[,lapply(.SD,mean),by=key(dt),.SDcols=1:66]
#
## Write the data to a file
#
write.table(tidyData, "tidy.txt", sep=",",row.names =FALSE)
#
#




