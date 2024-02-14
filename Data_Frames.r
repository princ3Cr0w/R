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
