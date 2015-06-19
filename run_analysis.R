
run_analysis <- function(Dataset, outfile)
{
    #Read out the numeric values for each activity
    ActivityLabels <- 
        read.table(unz(Dataset, "UCI\ HAR\ Dataset/activity_labels.txt"))

    #First, read out the meaning of each element of the feature vector
    Features <- 
        read.table(unz(Dataset, "UCI\ HAR\ Dataset/features.txt"))

    #Filter this down to those that appear to have 
    #mean or standard deviation measurements
    FeatureColumns <- grep("mean()|std()", Features$V2)

    #Read the feature vectors of the training data set
    #Filter this down to only the columns containing Mean or Std Deviation 
    #measurements. Rename the columns of the result according to the variable 
    #names specified in features.txt
    TrainingFeatures <- 
        read.table(unz(Dataset, "UCI\ HAR\ Dataset/train/X_train.txt"))
    TrainingFeatures <- TrainingFeatures[,FeatureColumns]
    colnames(TrainingFeatures) <- Features[FeatureColumns,]$V2

    #Read the feature vectors of the test data set
    #Filter this down to only the columns containing Mean or Std Deviation 
    #measurements. Rename the columns of the result according to the variable 
    #names specified in features.txt
    TestFeatures <- 
        read.table(unz(Dataset, "UCI\ HAR\ Dataset/test/X_test.txt"))
    TestFeatures <- 
        TestFeatures[,FeatureColumns]
    #Update the column names with the ones read from the Features list above
    colnames(TestFeatures) <- Features[FeatureColumns,]$V2

    #Read the subjects out
    TrainingSubjects <-
        read.table(unz(Dataset, "UCI\ HAR\ Dataset/train/subject_train.txt"))
    colnames(TrainingSubjects) <- c("Subject")

    TestSubjects <-
        read.table(unz(Dataset, "UCI\ HAR\ Dataset/test/subject_test.txt"))
    colnames(TestSubjects) <- c("Subject")

    #Read the activity labels for the training set
    TrainingActivity <- 
        read.table(unz(Dataset, "UCI\ HAR\ Dataset/train/y_train.txt"))
    TrainingActivity$V1 <- factor(TrainingActivity$V1, 
                                  labels=ActivityLabels$V2, 
                                  levels=ActivityLabels$V1)
    colnames(TrainingActivity) = c("Activity")

    #Read the activity labels for the test set
    TestActivity <- 
        read.table(unz(Dataset, "UCI\ HAR\ Dataset/test/y_test.txt"))
    TestActivity$V1 <- factor(TestActivity$V1, 
                              labels=ActivityLabels$V2, 
                              levels=ActivityLabels$V1)
    colnames(TestActivity) = c("Activity")
    
    #Construct the final, joined table
    FinalFeatures <- cbind( 
            rbind(TestActivity, TrainingActivity), 
            rbind(TestSubjects, TrainingSubjects),
            rbind(TestFeatures, TrainingFeatures)
        )

    #Aggregate for the summary information of each Activity by Subject
    Summary <- with(
            FinalFeatures, 
            aggregate
            (
                FinalFeatures[,3:ncol(FinalFeatures)], 
                by=list(Subject, Activity), 
                mean
            )
        )
    #Rename to meaningful data names
    colnames(Summary)[1] <- "Subject"
    colnames(Summary)[2] <- "Activity"

    #Output our result
    write.table(Summary, outfile, row.name=FALSE)
}