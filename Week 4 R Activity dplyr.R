#Week 4: dplyr package
library(dplyr)

# Task: Write the code to get a dataset from Base R: ChickWeight
# and save it as a dataframe with a new name that includes your first name
data("ChickWeight")

shiv <- ChickWeight
View(shiv)

# See the top rows of the data
# TASK: Write the code to see the top rows of the data
head(shiv, n=5)


# Install and call the package dplyr
# TASK: Write the code to install and call dplyr
install.packages('dplyr')
library(dplyr)

# Let's just see the weight and Time columns
# Task: Write the code to 'select' just the weight and Time columns 
# (hint: use the 'select' function)
select(shiv, weight, Time)



# Let's name the dataset with just the two columns, weight and Time
# TASK: Write the code to save the two columns as a new dataframe
# and give it a new name
wt <- select(shiv, weight, Time)
wt


#Let's get rid of the Time column in the new dataframe created above
#TASK: Write the code that deselects the Time column
#(hint: use the 'select' function to not select a -column)
shiv_without_time <- select(shiv, -Time)
print(shiv_without_time)


#Let's rename a column name
#TASK: Write the code that renames 'weight' to 'ounces'
shiv_renamed <- rename(shiv, ounces = weight)
print(shiv_renamed)

#Let's make a new dataframe with the new column name
#TASK: Write the code that names a new dataframe that includes the 'ounces' column
shiv_with_ounces <- mutate(shiv_renamed, ounces = ounces)
print(shiv_with_ounces)

#Let's 'filter' our dataframe to only those with a 1 in the Chick column
#TASK: Write the code that includes only rows where Chick = 1
filtered_data <- filter(shiv_renamed, Chick == 1)
print(filtered_data)


#Let's 'group' our data by Diet
#TASK: Write the code to group the data by Diet (hint: group_by)
grouped_data <- group_by(shiv_with_ounces, Diet)
print(grouped_data)


#Task: add one of the other codes (not in the tasks above) 
#you learned about from the dplyr package
shiv_with_ounces %>% 
  arrange(desc(ounces))

