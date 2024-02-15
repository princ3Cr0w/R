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

# Show in New Window
# title: "Lesson 2: Create your own data frame"
output: html_document
---

## Background for this activity
This activity is focused on creating and using data frames in `R`. A data frame is a collection of columns containing data, similar to a spreadsheet or SQL table. Data frames are one of the basic tools you will use to work with data in `R`. And you can create data frames from different data sources.  

There are three common sources for data:

- A`package` with data that can be accessed by loading that `package`
- An external file like a spreadsheet or CSV that can be imported into `R`
- Data that has been generated from scratch using `R` code

Wherever data comes from, you will almost always want to store it in a data frame object to work with it. Now, you can start creating and exploring data frames with the code chunks in the RMD space. To interact with the code chunk, click the green arrow in the top-right corner of the chunk. The executed code will appear in the RMD space and your console.

Throughout this activity, you will also have the opportunity to practice writing your own code by making changes to the code chunks yourself. If you encounter an error or get stuck, you can always check the Lesson2_Dataframe_Solutions .rmd file in the Solutions folder under Week 3 for the complete, correct code.

## Step 1: Load packages

Start by installing the required package; in this case, you will want to install `tidyverse`. If you have already installed and loaded `tidyverse` in this session, feel free to skip the code chunks in this step.

```{r}
install.packages("tidyverse")
```

Once a package is installed, you can load it by running the `library()` function with the package name inside the parentheses:

```{r}
library(tidyverse)
```

## Step 2: Create data frame

Sometimes you will need to generate a data frame directly in `R`. There are a number of ways to do this; one of the most common is to create individual vectors of data and then combine them into a data frame using the `data.frame()` function.

Here's how this works. First, create a vector of names by inserting four names into this code block between the quotation marks and then run it:

```{r}
names <- c("", "", "", "")
```

Then create a vector of ages by adding four ages separated by commas to the code chunk below. Make sure you are inputting numeric values for the ages or you might get an error. 

```{r}
age <- c(, , , )
```

With these two vectors, you can create a new data frame called `people`:

```{r}
people <- data.frame(names, age)
```

## Step 3: inspect the data frame

Now that you have this data frame, you can use some different functions to inspect it.

One common function you can use to preview the data is the `head()` function, which returns the columns and the first several rows of data. You can check out how the `head()` function works by running the chunk below:

```{r}
head(people)
```

In addition to `head()`, there are a number of other useful functions to summarize or preview your data. For example, the `str()` and `glimpse()` functions will both provide summaries of each column in your data arranged horizontally. You can check out these two functions in action by running the code chunks below:

```{r}
str(people)
```

```{r}
glimpse(people)
```

You can also use `colnames()` to get a list the column names in your data set. Run the code chunk below to check out this function:

```{r}
colnames(people)
```

Now that you have a data frame, you can work with it using all of the tools in `R`. For example, you could use `mutate()` if you wanted to create a new variable that would capture each person's age in twenty years. The code chunk below creates that new variable:

```{r}
mutate(people, age_in_20 = age + 20)
```


## Step 4: Try it yourself

To get more familiar with creating and using data frames, use the code chunks below to create your own custom data frame. 

First, create a vector of any five different fruits. You can type directly into the code chunk below; just place your cursor in the box and click to type. Once you have input the fruits you want in your data frame, run the code chunk.

```{r}

```

Now, create a new vector with a number representing your own personal rank for each fruit. Give a 1 to the fruit you like the most, and a 5 to the fruit you like the least. Remember, the scores need to be in the same order as the fruit above. So if your favorite fruit is last in the list above, the score `1` needs to be in the last position in the list below. Once you have input your rankings, run the code chunk.

```{r}

```

Finally, combine the two vectors into a data frame. You can call it `fruit_ranks`. Edit the code chunk below and run it to create your data frame.

```{r}

```

After you run this code chunk, it will create a data frame with your fruits and rankings.  

## Activity Wrap Up
In this activity, you learned how to create data frames, view them with summary functions like `head()` and `glimpse()`, and then made changes with the `mutate()` function. You can continue practicing these skills by modifying the code chunks in the rmd file, or use this code as a starting point in your own project console. As you explore data frames, consider how they are similar and different to the tables you have worked with in other data analysis tools like spreadsheets and SQL. Data frames are one of the most basic building blocks you will need to work with data in `R`. So understanding how to create and work with data frames is an important first step to analyzing data.  

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
> mutate(people, age_in_20 = age+20)
   names age age_in_20
1   John  20        40
2 George  25        45
3  Ringo  30        50
4   Paul  35        55
