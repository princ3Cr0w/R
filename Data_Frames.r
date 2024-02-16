# this data set id part of ggplot2 of tidyverse; make sure load ggplot2 first
# ran in console

> data("diamonds")
> View(diamonds)
> head(diamonds) #head previews the first 6 rows of data set

# A tibble: 6 × 10

  carat cut     color clarity depth table price     x     y
  <dbl> <ord>   <ord> <ord>   <dbl> <dbl> <int> <dbl> <dbl>
1  0.23 Ideal   E     SI2      61.5    55   326  3.95  3.98
2  0.21 Premium E     SI1      59.8    61   326  3.89  3.84
3  0.23 Good    E     VS1      56.9    65   327  4.05  4.07
4  0.29 Premium I     VS2      62.4    58   334  4.2   4.23
5  0.31 Good    J     SI2      63.3    58   335  4.34  4.35
6  0.24 Very G… J     VVS2     62.8    57   336  3.94  3.96
# ℹ 1 more variable: z <dbl>

# colnames call for the column names of the data set

> colnames(diamonds)
 [1] "carat"   "cut"     "color"   "clarity" "depth"  
 [6] "table"   "price"   "x"       "y"       "z"   

# mutate () calls to change column with calculated variables

> mutate(diamonds, carat_2=carat*100)
# A tibble: 53,940 × 11
   carat cut    color clarity depth table price     x     y   carat_2
   <dbl> <ord>  <ord> <ord>   <dbl> <dbl> <int> <dbl> <dbl>   <db1>
 1  0.23 Ideal  E     SI2      61.5    55   326  3.95  3.98    23
 2  0.21 Premi… E     SI1      59.8    61   326  3.89  3.84    21
 3  0.23 Good   E     VS1      56.9    65   327  4.05  4.07    23
 4  0.29 Premi… I     VS2      62.4    58   334  4.2   4.23    29.0
 5  0.31 Good   J     SI2      63.3    58   335  4.34  4.35    31
 6  0.24 Very … J     VVS2     62.8    57   336  3.94  3.96    24
 7  0.24 Very … I     VVS1     62.3    57   336  3.95  3.98    24
 8  0.26 Very … H     SI1      61.9    55   337  4.07  4.11    26
 9  0.22 Fair   E     VS2      65.1    61   337  3.87  3.78    22
10  0.23 Very … H     VS1      59.4    61   338  4     4.05    23
# ℹ 53,930 more rows
# ℹ 2 more variables: z <dbl>, carat_2 <dbl>
# ℹ Use `print(n = ...)` to see more rows

# Run "diamonds" data-set from data.frames to as_tibble

> data(diamonds)
> View(diamonds)
> as_tibble(diamonds)
# A tibble: 53,940 × 10
   carat cut    color clarity depth table price     x     y
   <dbl> <ord>  <ord> <ord>   <dbl> <dbl> <int> <dbl> <dbl>
 1  0.23 Ideal  E     SI2      61.5    55   326  3.95  3.98
 2  0.21 Premi… E     SI1      59.8    61   326  3.89  3.84
 3  0.23 Good   E     VS1      56.9    65   327  4.05  4.07
 4  0.29 Premi… I     VS2      62.4    58   334  4.2   4.23
 5  0.31 Good   J     SI2      63.3    58   335  4.34  4.35
 6  0.24 Very … J     VVS2     62.8    57   336  3.94  3.96
 7  0.24 Very … I     VVS1     62.3    57   336  3.95  3.98
 8  0.26 Very … H     SI1      61.9    55   337  4.07  4.11
 9  0.22 Fair   E     VS2      65.1    61   337  3.87  3.78
10  0.23 Very … H     VS1      59.4    61   338  4     4.05
# ℹ 53,930 more rows
# ℹ 1 more variable: z <dbl>
# ℹ Use `print(n = ...)` to see more rows
> 

# Run in console

> names <- c("John", "George", "Ringo", "Paul")
> age <- c(20, 25, 30, 35)
> people <-data.frame(names, age)
> head(people)
   names age
1   John  20
2 George  25
3  Ringo  30
4   Paul  35
> str(people)
'data.frame':	4 obs. of  2 variables:
 $ names: chr  "John" "George" "Ringo" "Paul"
 $ age  : num  20 25 30 35
> glimpse(people)
Rows: 4
Columns: 2
$ names <chr> "John", "George", "Ringo", "Paul"
$ age   <dbl> 20, 25, 30, 35
> colnames(people)
[1] "names" "age"  

# Mutate calls their age +20 years from now

> mutate(people, age_in_20 = age+20)
   names age age_in_20
1   John  20        40
2 George  25        45
3  Ringo  30        50
4   Paul  35        55

# Ggplot reusable template

>ggplot(data = <DATA>) + <GEOM_FUNCTION>
mappings = aes(<MAPPINGS>))
