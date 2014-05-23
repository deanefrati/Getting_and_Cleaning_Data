Getting and Cleaning Data
=========================

The R scrip "run_analysis.R" will read data collected from the accelerometers from the Samsung Galaxy S smartphone. More details about this data is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones The scripts uses the following files and thus requirs them ti be present in order to complete successfully:

* activity_labels.txt
* features.txt
* train/X_train.txt"
* train/y_train.txt
* train/subject_train.txt
* test/X_test.txt
* test/y_test.txt
* test/subject_test.txt

The script will merge the training and test datasets and output a new file (output.txt) containing the average of all Mean and Standard Deviation measurments available for each test subject by activity.

See more details in CodeBook.md
