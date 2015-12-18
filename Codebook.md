<body lang=EN-US link=blue vlink="#954F72" style='tab-interval:.5in'>

<div class=WordSection1>

<p class=MsoPlainText><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;font-family:"Calibri",sans-serif;mso-ascii-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:"Courier New"'>Codebook
for the tidy dataset from motion data<o:p></o:p></span></b></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:107%'>Introduction<o:p></o:p></span></b></p>

<p class=MsoNormal><span style='font-size:12.0pt;line-height:107%;mso-bidi-font-family:
"Courier New"'>This codebook contains information about the data processing
that was done for the assignment in the </span><span style='font-size:12.0pt;
line-height:107%'>course, </span><b style='mso-bidi-font-weight:normal'><span
style='font-size:12.0pt;line-height:107%;mso-bidi-font-family:"Courier New"'>Getting
and Cleaning Data</span></b><span style='font-size:12.0pt;line-height:107%'>,
conducted by John Hopkins University.<span style='mso-spacerun:yes'>  </span><o:p></o:p></span></p>

<p class=MsoNormal><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;line-height:107%'>Steps in the code <b>'project.R'</b><o:p></o:p></span></b></p>

<p class=MsoPlainText><b style='mso-bidi-font-weight:normal'><span
style='font-size:12.0pt;font-family:"Calibri",sans-serif;mso-ascii-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:"Courier New"'>Step-1<o:p></o:p></span></b></p>

<p class=MsoPlainText><span style='font-size:12.0pt;font-family:"Calibri",sans-serif;
mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
"Courier New"'>Execute the script,</span><b style='mso-bidi-font-weight:normal'><span
style='font-size:12.0pt;font-family:"Calibri",sans-serif;mso-ascii-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin'> <span class=SpellE>extractUCIHARdataset.R</span>.
</span></b><span style='font-size:12.0pt;font-family:"Calibri",sans-serif;
mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin'>This will
create the necessary data folder, download the data zip file and extract the
folder, <b style='mso-bidi-font-weight:normal'>“UCI HAR Dataset”</b> that would
contain the needed data files for this assignment.<o:p></o:p></span></p>

<p class=MsoPlainText><span style='font-size:12.0pt;font-family:"Calibri",sans-serif;
mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin'>The data
files needed are:<o:p></o:p></span></p>

<p class=MsoPlainText><span style='font-size:12.0pt;font-family:"Calibri",sans-serif;
mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin'><p>features.txt</p>
<p>activity_labels.txt</p>
<p>x_test.txt</span></p>
<p>y_test.txt</span></p>
<p>x_train.txt</span></p>
<p>y_train.txt</span></p>
<p>subject_test.txt
(one each for ‘test’ and ‘train’)</p></span></p>

<p class=MsoPlainText><b style='mso-bidi-font-weight:normal'><span
style='font-size:12.0pt;font-family:"Calibri",sans-serif;mso-ascii-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:"Courier New"'>Step-2</span></b></p>

<p class=MsoPlainText><span style='font-size:12.0pt;font-family:"Calibri",sans-serif;
mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
"Courier New"'><p>From the ‘features.txt’ data file read the needed column names
and corresponding column numbers. For our assignment we need all the columns
that have values for <span class=GramE>mean(</span>) and <span class=SpellE>std</span>()
data. There will be 66 columns</p>
<p>From the ‘activity_labels.txt’ read the activity labels.</p></span></p>

<p class=MsoPlainText><b style='mso-bidi-font-weight:normal'><span
style='font-size:12.0pt;font-family:"Calibri",sans-serif;mso-ascii-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:"Courier New"'>Step-3</span></b></p>

<p class=MsoPlainText><span style='font-size:12.0pt;font-family:"Calibri",sans-serif;
mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
"Courier New"'><p>We need to read the X- and Y- data files for test and training.
These files are available in the folder ‘test’ and ‘train’ along with the
subject names in the ‘subject_test.txt’ data file.</span></p>

<p class=MsoPlainText><b style='mso-bidi-font-weight:normal'><span
style='font-size:12.0pt;font-family:"Calibri",sans-serif;mso-ascii-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:"Courier New"'>`X<span
class=GramE>_{</span>type}.txt`</span></b><span style='font-size:12.0pt;
font-family:"Calibri",sans-serif;mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:
minor-latin;mso-bidi-font-family:"Courier New"'> - this file contains actual
measurements for all 561 fields</span></p>

<p class=MsoPlainText><b style='mso-bidi-font-weight:normal'><span
style='font-size:12.0pt;font-family:"Calibri",sans-serif;mso-ascii-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:"Courier New"'>`Y<span
class=GramE>_{</span>type}.txt`</span></b><span style='font-size:12.0pt;
font-family:"Calibri",sans-serif;mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:
minor-latin;mso-bidi-font-family:"Courier New"'> - this file contains
‘activity’ number of each measurement. This data will be merged with the
measurements. We will use the number to get the activity names read in Step-2;</span></p>

<p class=MsoPlainText><b style='mso-bidi-font-weight:normal'><span
style='font-size:12.0pt;font-family:"Calibri",sans-serif;mso-ascii-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:"Courier New"'>‘subject<span
class=GramE>_{</span>type}.txt`</span></b><span style='font-size:12.0pt;
font-family:"Calibri",sans-serif;mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:
minor-latin;mso-bidi-font-family:"Courier New"'> - this file contains the
subject number for each measurement. This will also be merged with the
measurement data to provide us the information of what subject was measured</span></p>

<p class=MsoPlainText><span style='font-size:12.0pt;font-family:"Calibri",sans-serif;
mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
"Courier New"'>Since the formats and steps are identical for ‘test’ and ‘train’
we can write a common function to read the needed data and call it for both.</span></p>

<p class=MsoPlainText><span style='font-size:12.0pt;font-family:"Calibri",sans-serif;
mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
"Courier New"'>While reading we will use the <span class=SpellE><i
style='mso-bidi-font-style:normal'>read.table</i></span> function and read only
the needed (66) columns’ data from the X- data file into a data frame (<span
class=SpellE><i style='mso-bidi-font-style:normal'>fulldata</i></span>). Next
we read the Y- file to get the activity related to the X-data we just read.
Using this Y-data and the activity names we had read earlier from the <span
class=SpellE>activity_labels</span> file we will add the necessary activity
column to the data frame, <span class=SpellE><i style='mso-bidi-font-style:
normal'>fulldata</i></span><i style='mso-bidi-font-style:normal'> (<span
class=SpellE>fulldata$activity</span></i>). Lastly we add the subject as
another column (<span class=SpellE><i style='mso-bidi-font-style:normal'>fulldate$subject</i></span><i
style='mso-bidi-font-style:normal'>) </i>in the data frame by reading the
subject data file.</span></p>

<p class=MsoPlainText><b style='mso-bidi-font-weight:normal'><span
style='font-size:12.0pt;font-family:"Calibri",sans-serif;mso-ascii-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:"Courier New"'>Step-4</span></b></p>

<p class=MsoPlainText><span style='font-size:12.0pt;font-family:"Calibri",sans-serif;
mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
"Courier New"'>After creating a data frame separately for ‘test’ and ‘train’ we
will bind them into a single data frame (<i style='mso-bidi-font-style:normal'>all</i>).</span></p>

<p class=MsoPlainText><b style='mso-bidi-font-weight:normal'><span
style='font-size:12.0pt;font-family:"Calibri",sans-serif;mso-ascii-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:"Courier New"'>Step-5</span></b></p>

<p class=MsoPlainText><span style='font-size:12.0pt;font-family:"Calibri",sans-serif;
mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
"Courier New"'>For the sake of performance we will convert the data frame (<i
style='mso-bidi-font-style:normal'>all)</i> into a data table (<span
class=SpellE><i style='mso-bidi-font-style:normal'>dt</i></span><i
style='mso-bidi-font-style:normal'>)</i> by calling <span class=SpellE><span
class=GramE><i style='mso-bidi-font-style:normal'>data.table</i></span></span><span
class=GramE><i style='mso-bidi-font-style:normal'> </i><span
style='mso-spacerun:yes'> </span>function</span>.</span></p>

<p class=MsoPlainText><b style='mso-bidi-font-weight:normal'><span
style='font-size:12.0pt;font-family:"Calibri",sans-serif;mso-ascii-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:"Courier New"'>Step-6</span></b></p>

<p class=MsoPlainText><span style='font-size:12.0pt;font-family:"Calibri",sans-serif;
mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
"Courier New"'>Since we want to calculate the mean for all the 66 columns of data
for every activity and subject, we will call <span class=SpellE><i
style='mso-bidi-font-style:normal'>setkey</i></span> function and set the data
table keys to ‘activity’ and ‘subject’ columns<i style='mso-bidi-font-style:
normal'>.</i></span></p>

<p class=MsoPlainText><span style='font-size:12.0pt;font-family:"Calibri",sans-serif;
mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
"Courier New"'>Next we will use <span class=SpellE><span class=GramE><i
style='mso-bidi-font-style:normal'>lapply</i></span></span><span class=GramE><i
style='mso-bidi-font-style:normal'> </i><span
style='mso-spacerun:yes'> </span>to</span> loop over 66 columns in <span
class=SpellE><i style='mso-bidi-font-style:normal'>dt</i></span><i
style='mso-bidi-font-style:normal'>, </i>calculating the mean for every column,
and store the output in <span class=SpellE><i style='mso-bidi-font-style:normal'>tidyData</i></span><i
style='mso-bidi-font-style:normal'></i></span></p>

<p class=MsoPlainText><b style='mso-bidi-font-weight:normal'><span
style='font-size:12.0pt;font-family:"Calibri",sans-serif;mso-ascii-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:"Courier New"'>Step-7</span></b></p>

<p class=MsoPlainText><span style='font-size:12.0pt;font-family:"Calibri",sans-serif;
mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
"Courier New"'>Finally, we will write the data from <span class=SpellE><i
style='mso-bidi-font-style:normal'>tidyData</i></span><i style='mso-bidi-font-style:
normal'> </i>to a file (<i style='mso-bidi-font-style:normal'>tidy.txt) </i>using
<span class=SpellE><i style='mso-bidi-font-style:normal'>write.table</i></span><i
style='mso-bidi-font-style:normal'> </i>function.</span></p>

<p class=MsoPlainText><b style='mso-bidi-font-weight:normal'><span
style='font-size:14.0pt;font-family:"Calibri",sans-serif;mso-ascii-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:"Courier New"'>Column
description</span></b></p>

<p class=MsoPlainText><span style='font-size:12.0pt;font-family:"Calibri",sans-serif;
mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
"Courier New"'>The columns available at the resulting data frame (<span
class=SpellE><i style='mso-bidi-font-style:normal'>tidydata</i></span>) are as
follows:</span></p>

<p class=MsoPlainText><span class=GramE><b style='mso-bidi-font-weight:normal'><span
style='font-size:12.0pt;font-family:"Calibri",sans-serif;mso-ascii-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:"Courier New"'>activity</span></b></span><span
style='font-size:12.0pt;font-family:"Calibri",sans-serif;mso-ascii-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:"Courier New"'>
- the name of the activity being performed, possible values are WALKING,
WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING and LAYING;</span></p>

<p class=MsoPlainText><span class=GramE><b style='mso-bidi-font-weight:normal'><span
style='font-size:12.0pt;font-family:"Calibri",sans-serif;mso-ascii-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:"Courier New"'>subject</span></b></span><span
style='font-size:12.0pt;font-family:"Calibri",sans-serif;mso-ascii-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:"Courier New"'>
- the number of the test subject that performed the activities. There were 30
people being measured, so the values go from 1 to 30;</span></p>

<p class=MsoPlainText><b style='mso-bidi-font-weight:normal'><span
style='font-size:12.0pt;font-family:"Calibri",sans-serif;mso-ascii-theme-font:
minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:"Courier New"'>All
other columns </span></b><span style='font-size:12.0pt;font-family:"Calibri",sans-serif;
mso-ascii-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;mso-bidi-font-family:
"Courier New"'>- these are the means for actual measurement columns grouped by
`activity` and `subject`.</span><span
style='font-family:"Calibri",sans-serif;mso-ascii-theme-font:minor-latin;
mso-hansi-theme-font:minor-latin;mso-bidi-font-family:"Courier New"'></span></p>

<p class=MsoPlainText><span style='font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p>

</div>

</body>

</html>
