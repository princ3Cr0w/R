# our first calculation using assignment and operators for calculation
quarter_1_sales <- 35657.98
quarter_2_sales <- 43810.55
midyear_sales <- quarter_1_sales + quarter_2_sales

# In console
> midyear_sales
[1] 

1. Assign a single value to a variable:
```r
variable_name <- value
```

2. Assign multiple values to multiple variables simultaneously:
```r
c(variable1, variable2, ...) <- c(value1, value2, ...)
```

3. Assign values to elements of a vector:
```r
vector_name[index] <- value
```

4. Assign values to elements of a matrix:
```r
matrix_name[row_index, column_index] <- value
```

5. Assign values to elements of a data frame:
```r
dataframe_name$row_name <- value
```

6. Use conditional assignment:
```r
variable_name <- if(condition) value1 else value2
```

# Load the dplyr package
library(dplyr)

# Create a sample data frame
data <- data.frame(
  ID = c(1, 2, 3, 4, 5),
  Name = c("John", "Alice", "Bob", "Emma", "Mike"),
  Age = c(25, 30, 35, 40, 45)
)

# Filter data where Age is greater than 30
filtered_data <- data %>%
  filter(Age > 30)

# View the filtered data
print(filtered_data)

# tidyverse package see update

> tidyverse_update()