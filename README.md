## Readme, assignment 'Cleaning smartphone data'
# Pieter ten Have, 6 February 2016


To start with, there are the following 6 original datasets in the zip-file:

Dataset 1. training data with measurements
Dataset 2. test data with measurements
Dataset 3. subject IDs related to training dataset
Dataset 4. activity IDs related to training dataset
Dataset 5. subject IDs related to test dataset
Dataset 6. activity IDs related to test dataset.

I have one R-script that performs the following actions:

Step 1. load dataset 1 and 2,
        row bind (rbind) them,
        and then calculate mean and standard deviation for each row of data
Step 2. load dataset 3 and 4,
        and then column bind (cbind) them to dataset 7
Step 3. load dataset 5 and 6,
        and then column bind (cbind) them to dataset 8
Step 4. Row bind dataset 7 with dataset 8, creating dataset 9.
Step 5. Column bind dataset 9 with the vector of means and the vector of standard deviations.
        This is result1, and answer to part 1 of the assignment.
Step 6. Use the aggregate function to group by (subject_ID, activity_ID)
        and calculate mean of means by group.
        This is result2, and answer to part 2 of the assignment.