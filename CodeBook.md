## Explanation of objects, for assignmnet concerning "Cleaning of smartphone data"
#  Pieter ten Have, 6 February 2016


train1  = download of file X_train.txt from zip.file
test1   = download of file X_test.txt from zip.file
total   = result of rowbind of train1 and test1

fun_mean = vector of means, of each row of total
fun_sd   = vector of standard deviations, of each row of total

train_subj = download of file subject_train from zip.file
train_act  = download of file y_train.txt from zip.file
train2     = result of rowbind of train_subj and train_act,
             each row containing subject_ID and activity_ID (of training dataset)

test_subj = download of file subject_test.txt from zip.file
test_act  = download of file y_test.txt from zip.file
test2     = result of rowbind of test_subj and test_act,
            each row containing subject_ID and activity_ID (of test dataset)

ids = data.frame, each row containing subject_ID and activity_ID (of all data)

result1 = data.frame, each row containing subject_ID , activity_ID, mean, sd (of all data)

temp     = data.frame, firts two columns containing all combinations of
           subject_ID and activity_ID, and mean of means for each combination
result2 = temp