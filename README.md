run_analysis.R
==============

run_analysis.R implements a single function matching the following prototype

```
run_analysis ( zipfile, outfile )
```
Parameter Name | Meaning
---------------|--------
zipfile | Zip file containing a collection of files containing measurements to aggregate
outfile | Output file to dump a table of tidy data containing an aggregate of both the test and training data from within the zip file


Within the zip file, there must be files matching the following relative paths.

Zip Relative File Path | Data contained therein
-----------------------|--------------
"UCI HAR Dataset/activity_labels.txt" | Contains a mapping between the numeric activity values and a textual description of the activity performed
"UCI HAR Dataset/features.txt" | The complete list of features recorded
"UCI HAR Dataset/train/X_train.txt" | Rows of feature vectors for the training set
"UCI HAR Dataset/test/X_test.txt" | Rows of feature vectors for the test set
"UCI HAR Dataset/train/subject_train.txt" | Rows identifying subjects for whom each training feature vector is associated
"UCI HAR Dataset/test/subject_test.txt" | Rows identifying subjects for whom each test feature vector is associated
"UCI HAR Dataset/train/y_train.txt" | Rows identifying activities performed for each training feature vector
"UCI HAR Dataset/test/y_test.txt"| Rows identifying activities performed for each test feature vector
```

Source the run_analysis.R file and call it with appropriate parameters to generate the aggregate file.
