# Introduction to R for Data Analysis

<div align="center">
  <img src="https://www.r-project.org/logo/Rlogo.png" alt="R Logo" width="100"/><br>
  <h1>R Programming Language</h1>
  <p>R is a powerful programming language and environment for statistical computing and graphics.</p>
  <a href="https://www.r-project.org/" target="_blank"><strong>Learn more</strong></a>
</div>


R is a powerful programming language and environment commonly used for statistical computing, data analysis, and visualization. It provides a wide range of tools and libraries specifically designed for handling, processing, and visualizing data.

## Features of R

- **Statistical Analysis**: R offers a comprehensive suite of statistical functions and algorithms for performing various types of statistical analysis, including hypothesis testing, regression analysis, time series analysis, and more.

- **Data Manipulation**: R provides extensive capabilities for data manipulation, transformation, and cleaning. It includes functions for filtering, sorting, merging, reshaping, and summarizing datasets.

- **Data Visualization**: R offers rich visualization capabilities through libraries like ggplot2, which allows users to create highly customizable and publication-quality plots, charts, and graphs.

- **Programming Flexibility**: R is a highly flexible and extensible language, allowing users to write custom functions, packages, and scripts to address specific analytical needs. It also supports integration with other programming languages and tools.

- **Community and Resources**: R has a vibrant and active community of users, developers, and contributors. There are numerous online resources, forums, tutorials, and documentation available to support learning and development in R.

## Getting Started with R

To get started with R, you can download and install the R programming language from the [Comprehensive R Archive Network (CRAN)](https://cran.r-project.org/). Additionally, you may want to consider using an integrated development environment (IDE) like RStudio, which provides a user-friendly interface for writing, executing, and debugging R code.

Once you have R installed, you can begin exploring its capabilities by working through tutorials, examples, and exercises available in online resources, books, and courses. Familiarizing yourself with basic R syntax, data structures, functions, and packages will lay a solid foundation for conducting data analysis and visualization tasks in R.

## Example R Code

Here's a simple example of R code to calculate the mean and standard deviation of a dataset and creating vectors:

```r
# Create a sample dataset
data <- c(10, 20, 30, 40, 50)

# Calculate the mean and standard deviation
mean_value <- mean(data)
sd_value <- sd(data)

# Print the results
print(paste("Mean:", mean_value))
print(paste("Standard Deviation:", sd_value))

```r
# Working with Vectors in R

In R, a vector is a basic data structure that holds elements of the same type. Here are some common operations you can perform with vectors in R.

## Creating Vectors

### Numeric Vector
```R
# Create a numeric vector
numeric_vector <- c(1, 2, 3, 4, 5)

# Create a character vector
character_vector <- c("apple", "banana", "orange", "grape", "kiwi")

# Create a logical vector
logical_vector <- c(TRUE, FALSE, TRUE, FALSE, TRUE)

# Access the first element of a vector
first_element <- numeric_vector[1]

# Access elements using logical indexing
logical_index <- c(TRUE, FALSE, TRUE, FALSE, TRUE)
selected_elements <- numeric_vector[logical_index]

# Add two vectors element-wise
result <- numeric_vector + c(10, 20, 30, 40, 50)

# Get the length of a vector
vector_length <- length(numeric_vector)

# Sum of elements in a vector
sum_result <- sum(numeric_vector)

# Mean of elements in a vector
mean_result <- mean(numeric_vector)

# Sort a vector in ascending order
sorted_vector <- sort(numeric_vector)

```R
# Load the lubridate package for date-time manipulation
library(lubridate)

# Create a date object
date <- ymd("2024-02-07")

# Create a time object
time <- hm("12:30")

# Combine date and time
datetime <- ymd_hms("2024-02-07 12:30:00")

# Get current date and time
current_datetime <- Sys.time()

# Extract components from a date-time object
year <- year(datetime)
month <- month(datetime)
day <- day(datetime)
hour <- hour(datetime)
minute <- minute(datetime)
second <- second(datetime)

# Calculate difference between two date-time objects
diff_seconds <- difftime(current_datetime, datetime, units = "secs")
diff_minutes <- difftime(current_datetime, datetime, units = "mins")
diff_hours <- difftime(current_datetime, datetime, units = "hours")
diff_days <- difftime(current_datetime, datetime, units = "days")

# Format date-time object
formatted_datetime <- format(datetime, "%Y-%m-%d %H:%M:%S")

# Add or subtract time intervals
new_datetime <- datetime + days(1)
new_datetime <- datetime - hours(2)

# Extract weekday from a date-time object
weekday <- wday(datetime, label = TRUE)

# Check if a year is a leap year
is_leap_year <- leap_year(year)

# Calculate age
birth_date <- ymd("1990-05-15")
age <- interval(birth_date, current_datetime) %/% years(1)

# Display results
print(date)
print(time)
print(datetime)
print(current_datetime)
print(diff_seconds)
print(diff_minutes)
print(diff_hours)
print(diff_days)
print(formatted_datetime)
print(new_datetime)
print(weekday)
print(is_leap_year)
print(age)

```R
# Create a data frame manually
# Each column is created as a vector, and they are combined into a data frame using data.frame() function
name <- c("John", "Alice", "Bob", "Emily")
age <- c(25, 30, 22, 28)
city <- c("New York", "Los Angeles", "Chicago", "San Francisco")

# Combine vectors into a data frame
df <- data.frame(Name = name, Age = age, City = city)

# Display the data frame
print(df)

# Accessing elements of a data frame
# You can use row and column indices or column names to access elements
# Accessing first row
first_row <- df[1, ]

# Accessing Age column
age_column <- df$Age

# Accessing data frame elements by column name and row index
value <- df$Age[2]

# Adding a new column to the data frame
gender <- c("Male", "Female", "Male", "Female")
df$Gender <- gender

# Removing a column from the data frame
df <- df[, -4]  # Remove the Gender column

# Removing a row from the data frame
df <- df[-2, ]  # Remove the second row

# Get summary statistics for numeric columns
summary(df$Age)

# Filter rows based on conditions
filtered_df <- df[df$Age > 25, ]

# Sort data frame by a column
sorted_df <- df[order(df$Age), ]

# Add row to the data frame
new_row <- data.frame(Name = "Jack", Age = 35, City = "Boston")
df <- rbind(df, new_row)

# Merge data frames
# Assuming you have another data frame df2
merged_df <- merge(df, df2, by = "Name")

# Read data from a CSV file into a data frame
# Assuming you have a CSV file named 'data.csv'
data_from_csv <- read.csv("data.csv")

# Write data frame to a CSV file
write.csv(df, "output.csv", row.names = FALSE)

# Write rows and columns
data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))
  x   y
1 1 1.5
2 2 5.5
3 3 7.5

# Matrices
> matrix(c(3:8), nrow = 2)
     [,1] [,2] [,3]
[1,]    3    5    7
[2,]    4    6    8
> matrix(c(3:6), nrow = 2)
     [,1] [,2]
[1,]    3    5
[2,]    4    6
> matrix(c(3:8), ncol = 2)
     [,1] [,2]
[1,]    3    6
[2,]    4    7
[3,]    5    8

# Operators and Calculations
# our first calculation
quarter_1_sales <- 35657.98
quarter_2_sales <- 43810.55
midyear_sales <- quarter_1_sales + quarter_2_sales

> yearend_sales <- midyear_sales * 2
> yearend_sales
[1] 158937.1
