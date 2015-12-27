<p><b>Codebook for the tidy dataset from motion data</b></p>
<p><b>Introduction</b></p>
<p>This codebook contains information about the data processing that was done for the assignment in the course, <b>Getting and Cleaning Data</b>, conducted by John Hopkins University. </p>
<p><b>Steps in the code <i>'run_analysis.R'</i></b></p>
<p><b>Step-1</b></p>
<p>Execute the script, <b>extractUCIHARdataset.R</b>. This will create the necessary data folder, download the data zip file and extract the folder, <b>“UCI HAR Dataset” </b> that would contain the needed data files for this assignment.</p>
<p>The data files needed are:</p>
<p>features.txt</p>
<p>activity_labels.txt</p>
<p>x_test.txt</p>
<p>y_test.txt</p>
<p>x_train.txt</p>
<p>y_train.txt</p>
<p>subject_test.txt (one each for ‘test’ and ‘train’)</p>
<p><b>Step-2</b></p>
<p>From the ‘features.txt’ data file read the needed column names and corresponding column numbers. For our assignment we need all the columns that have values for mean() and std() data. There will be 66 columns</p>
<p>From the ‘activity_labels.txt’ read the activity labels.</p>
<p><b>Step-3</b></p>
<p>We need to read the X- and Y- data files for test and training. These files are available in the folder ‘test’ and ‘train’ along with the subject names in the ‘subject_test.txt’ data file.</p>
<p><b>`X_{type}.txt`</b> - this file contains actual measurements for all 561 fields</p>
<p><b>`Y_{type}.txt`</b> - this file contains ‘activity’ number of each measurement. This data will be merged with the measurements. We will use the number to get the activity names read in Step-2;</p>
<p><b> ‘subject_{type}.txt`</b> - this file contains the subject number for each measurement. This will also be merged with the measurement data to provide us the information of what subject was measured</p>
<p>Since the formats and steps are identical for ‘test’ and ‘train’ we can write a common function to read the needed data and call it for both.</p>
<p>While reading we will use the <i>read.table</i> function and read only the needed (66) columns’ data from the X- data file into a data frame <i> (fulldata) </i>. Next we read the Y- file to get the activity related to the X-data we just read. Using this Y-data and the activity names we had read earlier from the <i>activity_labels</i> file we will add the necessary activity column to the data frame,<i>fulldata (fulldata$activity) </i>. Lastly, we add the subject as another column <i> (fulldate$subject) </i> in the data frame by reading the subject data file.</p>
<p><b>Step-4</b></p>
<p>After creating a data frame separately for ‘test’ and ‘train’ we will bind them into a single data frame <i> (all) </i>.</p>
<p><b>Step-5</b></p>
<p>For the sake of performance we will convert the data frame <i>(all)</i> into a data table <i>(dt)</i> by calling <i>data.table</i>  function.</p>
<p><b>Step-6</b></p>
<p>Since we want to calculate the mean for all the 66 columns of data for every activity and subject, we will call <i>setkey</i> function and set the data table keys to ‘activity’ and ‘subject’ columns.</p>
<p>Next we will use <i>lapply</i>  to loop over 66 columns in <i>dt</i>, calculating the mean for every column, and store the output in tidyData</p>
<p><b>Step-7</b></p>
<p>Finally, we will write the data from <i>tidyData</i> to a file <i> (tidy.txt) </i> using <i>write.table</i> function.</p>
<p><b>Column description</b></p>
<p>The columns available at the resulting data frame <i> (tidydata) </i> are as follows:</p>
<p><b>activity</b> - the name of the activity being performed, possible values are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING;</p>
<p><b>subject</b> - the number of the test subject that performed the activities. There were 30 people being measured, so the values range from 1 to 30;</p>
<p><b>All other columns</b> - these are the means for actual measurement columns grouped by `activity` and `subject`.</p>
<p></p>
<p>
