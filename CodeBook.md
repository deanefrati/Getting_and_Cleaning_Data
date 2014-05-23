#Code Book
The R scrip "run_analysis.R" will read data collected from the accelerometers from the Samsung Galaxy S smartphone. More details about this data is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
The scripts uses the following files and thus requirs them ti be present in order to complete successfully:

* activity_labels.txt
* features.txt
* train/X_train.txt"
* train/y_train.txt
* train/subject_train.txt
* test/X_test.txt
* test/y_test.txt
* test/subject_test.txt

The script will merge the training and test datasets and output a new file (output.txt) containing the average of all Mean and Standard Deviation measurments available for each test subject by activity.

There will be 30 subjects in the output file and for each mean measurements for the following activities:

* LAYING 
* SITTING 
* STANDING 
* WALKING 
* WALKING_DOWNSTAIRS 
* WALKING_UPSTAIRS

These are the measurements available in the output file:

* "fBodyAcc.mean...X"
* "fBodyAcc.mean...Y"
* "fBodyAcc.mean...Z"           
* "fBodyAcc.std...X"            
* "fBodyAcc.std...Y"            
* "fBodyAcc.std...Z"           
* "fBodyAccJerk.mean...X"       
* "fBodyAccJerk.mean...Y"       
* "fBodyAccJerk.mean...Z"       
* "fBodyAccJerk.std...X"     
* "fBodyAccJerk.std...Y"        
* "fBodyAccJerk.std...Z"        
* "fBodyAccMag.mean.."          
* "fBodyAccMag.std.."     
* "fBodyBodyAccJerkMag.mean.."  
* "fBodyBodyAccJerkMag.std.."   
* "fBodyBodyGyroJerkMag.mean.." 
* "fBodyBodyGyroJerkMag.std.." 
* "fBodyBodyGyroMag.mean.."     
* "fBodyBodyGyroMag.std.."      
* "fBodyGyro.mean...X"          
* "fBodyGyro.mean...Y"   
* "fBodyGyro.mean...Z"          
* "fBodyGyro.std...X"           
* "fBodyGyro.std...Y"           
* "fBodyGyro.std...Z"          
* "tBodyAcc.mean...X"           
* "tBodyAcc.mean...Y"          
* "tBodyAcc.mean...Z"           
* "tBodyAcc.std...X"           
* "tBodyAcc.std...Y"            
* "tBodyAcc.std...Z"           
* "tBodyAccJerk.mean...X"       
* "tBodyAccJerk.mean...Y"      
* "tBodyAccJerk.mean...Z"       
* "tBodyAccJerk.std...X"        
* "tBodyAccJerk.std...Y"        
* "tBodyAccJerk.std...Z"       
* "tBodyAccJerkMag.mean.."      
* "tBodyAccJerkMag.std.."       
* "tBodyAccMag.mean.."          
* "tBodyAccMag.std.."          
* "tBodyGyro.mean...X"          
* "tBodyGyro.mean...Y"          
* "tBodyGyro.mean...Z"          
* "tBodyGyro.std...X"          
* "tBodyGyro.std...Y"           
* "tBodyGyro.std...Z"           
* "tBodyGyroJerk.mean...X"      
* "tBodyGyroJerk.mean...Y"     
* "tBodyGyroJerk.mean...Z"      
* "tBodyGyroJerk.std...X"       
* "tBodyGyroJerk.std...Y"       
* "tBodyGyroJerk.std...Z"      
* "tBodyGyroJerkMag.mean.."     
* "tBodyGyroJerkMag.std.."      
* "tBodyGyroMag.mean.."         
* "tBodyGyroMag.std.."         
* "tGravityAcc.mean...X"        
* "tGravityAcc.mean...Y"        
* "tGravityAcc.mean...Z"        
* "tGravityAcc.std...X"        
* "tGravityAcc.std...Y"         
* "tGravityAcc.std...Z"         
* "tGravityAccMag.mean.."       
* "tGravityAccMag.std.."       
