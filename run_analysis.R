library("data.table")
library("tidyverse")

#labels and features
actlabel = read.table("./UCI HAR Dataset/activity_labels.txt")
features = read.table("./UCI HAR Dataset/features.txt")

#training set
trainsub = read.table("./UCI HAR Dataset/train/subject_train.txt")
trainact = read.table("./UCI HAR Dataset/train/y_train.txt")
traindata = read.table("./UCI HAR Dataset/train/X_train.txt")

#test set
testsub = read.table("./UCI HAR Dataset/test/subject_test.txt")
testact = read.table("./UCI HAR Dataset/test/y_test.txt")
testdata = read.table("./UCI HAR Dataset/test/X_test.txt")

#Add column names to the data
colnames(traindata) = features[,2]
colnames(testdata) = features[,2]

#Select columns that contain mean or standard deviation(std) values
traindata = select(traindata, grep("(mean|std)\\(\\)", features[,2]))
testdata = select(testdata, grep("(mean|std)\\(\\)", features[,2]))

#Merge subject, y and X into a single data.table
traindata = data.table(subject=trainsub[,1], activity=trainact[,1], traindata)
testdata = data.table(subject=testsub[,1], activity=testact[,1], testdata)

#Combine train and test data to single table
data = rbind(traindata, testdata)

#Change activity labels to descriptive labels
data$activity = factor(data$activity, levels=actlabel[,1], labels=actlabel[,2])

#Create summary data table
summ = data %>% group_by(subject, activity) %>% summarise(across(-c(1:2), mean))
out = as.data.table(summ)
write.table(out, file="summary.txt", row.names = F)
