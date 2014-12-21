==================================================================

The script in the repository is used to reshape the data obtained from
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

==================================================================

To run the R script please ensure that the "UCI HAR Dataset" folder
is in your working directory.

==================================================================

There are two functions:

- clean_data()

- agg_data()

The first one is used to read all the necessary files, megre them,
label the variables and get only the "mean()" and "std()" measures
in the end. In other words, clean_data() performs tasks 1-4 from the
assignment.

Second function gets the mean of the measures for every activity and subject - this is our "group by" function for the task 5.

In the end we write the results in "out.txt" file.

==================================================================

Varible description can be found in the CodeBook.md file.

==================================================================