# Create working directory and change to it
dirPath<-"C:/Downloads/Courses/JohnHopkins/GettingAndCleaningData/project"
if (!file.exists(dirPath)){
   dir.create(dirPath,recursive=TRUE)
   }

setwd(dirPath)
#
# Download datafile (in zip format) and extract the file
#
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
		 destfile = "getdata-projectfiles-UCI HAR Dataset.zip")
unzip("getdata-projectfiles-UCI HAR Dataset.zip",exdir=".")

