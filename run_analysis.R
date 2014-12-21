clean_data <- function(){
    ##Read data from files
    features <- read.table("UCI HAR Dataset/features.txt", quote="\"")
    X_train <- read.table("UCI HAR Dataset/train/X_train.txt", quote="\"")
    Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt", quote="\"")
    subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", quote="\"")
    X_test <- read.table("UCI HAR Dataset/test/X_test.txt", quote="\"")
    Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt", quote="\"")
    subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", quote="\"")
    activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", quote="\"")
    
    ##merge train and test data sets
    colnames(X_train) <- features[[2]]
    colnames(X_test) <- features[[2]]
    train <- cbind(subject_train, Y_train, X_train)
    test <- cbind(subject_test, Y_test, X_test)
    rawdata <- rbind(train, test)
    
    colnames(rawdata)[1:2] <- c("subject","activity_id")
    colnames(activity_labels) <- c("activity_id", "activity")
    
    ##get necessary measures
    nec_names <- grep("mean\\(\\)|std\\(\\)", features[[2]], value = TRUE)
    data <- rawdata[c("subject","activity_id",nec_names)]
    data <- merge(activity_labels,data, by = "activity_id")
    data[["activity_id"]] <- NULL
    
    return(data)
}

agg_data <- function(data){
    df <- aggregate(data[3:68], list(data[["activity"]],data[["subject"]]), mean)
    colnames(df)[1:2] <- c("activity","subject")
    return(df)
}

write.table(agg_data(clean_data()),"out.txt", row.name = FALSE)