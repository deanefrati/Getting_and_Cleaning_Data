runAnalysis <- function(){
        
        # Read activities and features
        print("Reading meta data...")
        temp <- read.table("activity_labels.txt", sep = "")
        activityLabels <- as.character(temp$V2)
        temp <- read.table("features.txt", sep = "")
        attributeNames <- temp$V2
        
        # Read train data
        print("Reading train data...")
        trainx <- read.table("train/X_train.txt", sep = "")
        names(trainx) <- attributeNames
        trainy <- read.table("train/y_train.txt", sep = "")
        names(trainy) <- "activity"
        trainy$activity <- as.factor(trainy$activity)
        levels(trainy$activity) <- activityLabels
        trainSubjects <- read.table("train/subject_train.txt", sep = "")
        names(trainSubjects) <- "subject"
        trainSubjects$subject <- as.factor(trainSubjects$subject)
        train = cbind(trainSubjects, trainy, trainx)
        
        # Read test data
        print("Reading test data...")
        testx <- read.table("test/X_test.txt", sep = "")
        names(testx) <- attributeNames
        testy <- read.table("test/y_test.txt", sep = "")
        names(testy) <- "activity"
        testy$activity <- as.factor(testy$activity)
        levels(testy$activity) <- activityLabels
        testSubjects <- read.table("test/subject_test.txt", sep = "")
        names(testSubjects) <- "subject"
        testSubjects$subject <- as.factor(testSubjects$subject)
        test <- cbind(testSubjects, testy, testx)
        
        # Merge train and test
        print("Merging train and test data...")
        train$partition <- "Train"
        test$partition <- "Test"
        merged <- rbind(train, test)
        merged$partition <- as.factor(merged$partition)
        
        # Select only mean() and std() measurments
        print("Selecting only mean and standard deviation measurments...")
        m <- attributeNames[grepl("*mean\\(\\)*",attributeNames,ignore.case=T)]
        s <- attributeNames[grepl("*std\\(\\).*",attributeNames,ignore.case=T)]
        mean_std <- subset(merged,select=c("subject","activity",sort(c(as.character(m),as.character(s)))))
        
        # Producce average data set
        print("Creating averages data set...")
        tds <- aggregate(mean_std[,3:ncol(mean_std)],by=list(subject=mean_std$subject,activity=mean_std$activity), mean)
        tds <- tds[order(as.numeric(as.character(tds$subject)),tds$activity),]
}

tds <- runAnalysis()
rownames(tds) <- NULL
write.csv(x=tds, file="output.txt", row.names=FALSE)
rm(tds)
rm(runAnalysis)
print("Done! See output.txt in your working directory")