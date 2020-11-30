<h1>Create tidy data</h1>

1. Keep run_analysis.R file in the same directory as the dataset folder
2. Ensure the dataset folder is named *UCI HAR Dataset*
3. Run the file
4. A new text file named **out** will be created in the directory with the summary dataset

<h1>Working</h1>

The script reads all the test and training data in a table. Column names are added to this data using the *features.txt* file. Since we only need the mean and standard deviation values, all other columns are discarded using the *select* function. The columnnames are filtered out using a regex with *grep*. Then subject and activity data is merged with these tables. The two traindata and testdata tables are combined with *rbind*. The activity column is then converted to a factor based on the labels described in *activity_labels.txt* file. This creates the new tidy dataset.

Now to create the summary dataset, the new tidy data is *grouped by* **subject** and **activity**. The mean of all columns(except subject and activity itself) of this grouped set is calculated using the *summarize* function.
