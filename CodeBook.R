---
  title: "Codebook.md"
author: "Aquinas"
date: "5/1/2020"
output: html_document
---
  
  ```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Initial dataset

The initial dataset was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

This represents a study performed on Samsung Galaxy smartphones. Details of this original study can be found at http://archive.ics.uci.edu/ml/datasets/Smartphone-Based+Recognition+of+Human+Activities+and+Postural+Transitions

The dataset is comprised of both a training dataset and test dataset, comprising a variety of measurements from gyros, accelerometers, etc. 

Per the dataset creators at the study archive linked above:
  
  >The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. They performed a protocol of activities composed of six basic activities: three static postures (standing, sitting, lying) and three dynamic activities (walking, walking downstairs and walking upstairs). The experiment also included postural transitions that occurred between the static postures. These are: stand-to-sit, sit-to-stand, sit-to-lie, lie-to-sit, stand-to-lie, and lie-to-stand. All the participants were wearing a smartphone (Samsung Galaxy S II) on the waist during the experiment execution. We captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz using the embedded accelerometer and gyroscope of the device. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of 561 features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.


## Study - processing steps taken

The purpose of this script is to process and tidy the data. This was done using the following steps:
  
  1. The various text files are imported into new objects, with column names provided at the time of merger. (Script lines 11-25).
2. The data are merged into a new dataset called merged_data (lines 26-29)
3. Measurements for mean and standard deviation are extracted (42-44)
4. Descriptive column names are provided (49-65)
5. A new, tidy data set is created (69-74)

Please see run_analysis.R for the code, by line as shown above.

## Variables and Units
The following variables were used:
  
  features:  contains the features column
activity_labels: contains the activity labels
subject_train: contains subject info for the training group
subject_test: subject info for the test group
x_train, y_train, x_test, y_test: variables provided for training and test groups
training_dataset = the bound training results
test_dataset = the bound test results
merged_data = all sets bound

These are used to store the following data from the dataset:
  - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.