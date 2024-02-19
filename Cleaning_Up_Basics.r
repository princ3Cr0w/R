# Basics with data frames - start doing some interesting things like clean, standardize, manipulate, and visualize data

> install.packages("here")
Installing package into ‘/cloud/lib/x86_64-pc-linux-gnu-library/4.3’
(as ‘lib’ is unspecified)
also installing the dependency ‘rprojroot’

trying URL 'http://rspm/default/__linux__/focal/latest/src/contrib/rprojroot_2.0.4.tar.gz'
Content type 'application/x-gzip' length 105473 bytes (103 KB)
==================================================
downloaded 103 KB

trying URL 'http://rspm/default/__linux__/focal/latest/src/contrib/here_1.0.1.tar.gz'
Content type 'application/x-gzip' length 52764 bytes (51 KB)
==================================================
downloaded 51 KB

* installing *binary* package ‘rprojroot’ ...
* DONE (rprojroot)
* installing *binary* package ‘here’ ...
* DONE (here)

The downloaded source packages are in
	‘/tmp/RtmplLWp4c/downloaded_packages’
> library("here")
here() starts at /cloud/project
> install.packages("skimr")
Installing package into ‘/cloud/lib/x86_64-pc-linux-gnu-library/4.3’
(as ‘lib’ is unspecified)
also installing the dependency ‘repr’

trying URL 'http://rspm/default/__linux__/focal/latest/src/contrib/repr_1.1.6.tar.gz'
Content type 'application/x-gzip' length 121446 bytes (118 KB)
==================================================
downloaded 118 KB

trying URL 'http://rspm/default/__linux__/focal/latest/src/contrib/skimr_2.1.5.tar.gz'
Content type 'application/x-gzip' length 1227073 bytes (1.2 MB)
==================================================
downloaded 1.2 MB

* installing *binary* package ‘repr’ ...
* DONE (repr)
* installing *binary* package ‘skimr’ ...
* DONE (skimr)

The downloaded source packages are in
	‘/tmp/RtmplLWp4c/downloaded_packages’
> install.packages("janitor")
Installing package into ‘/cloud/lib/x86_64-pc-linux-gnu-library/4.3’
(as ‘lib’ is unspecified)
also installing the dependency ‘snakecase’

trying URL 'http://rspm/default/__linux__/focal/latest/src/contrib/snakecase_0.11.1.tar.gz'
Content type 'application/x-gzip' length 159782 bytes (156 KB)
==================================================
downloaded 156 KB

trying URL 'http://rspm/default/__linux__/focal/latest/src/contrib/janitor_2.2.0.tar.gz'
Content type 'application/x-gzip' length 283235 bytes (276 KB)
==================================================
downloaded 276 KB

* installing *binary* package ‘snakecase’ ...
* DONE (snakecase)
* installing *binary* package ‘janitor’ ...
* DONE (janitor)

The downloaded source packages are in
	‘/tmp/RtmplLWp4c/downloaded_packages’
> library("janitor")

Attaching package: ‘janitor’

The following objects are masked from ‘package:stats’:

    chisq.test, fisher.test

> install.packages("dplyr")
Error in install.packages : Updating loaded packages

Restarting R session...

> install.packages("dplyr")
Error in install.packages : Updating loaded packages
> install.packages("dplyr")
Installing package into ‘/cloud/lib/x86_64-pc-linux-gnu-library/4.3’
(as ‘lib’ is unspecified)
trying URL 'http://rspm/default/__linux__/focal/latest/src/contrib/dplyr_1.1.4.tar.gz'
Content type 'application/x-gzip' length 1465481 bytes (1.4 MB)
==================================================
downloaded 1.4 MB

* installing *binary* package ‘dplyr’ ...
* DONE (dplyr)

The downloaded source packages are in
	‘/tmp/RtmpK4XIyv/downloaded_packages’
> library("dplyr")

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union

> install.packages("palmerpenguins")
Installing package into ‘/cloud/lib/x86_64-pc-linux-gnu-library/4.3’
(as ‘lib’ is unspecified)
trying URL 'http://rspm/default/__linux__/focal/latest/src/contrib/palmerpenguins_0.1.1.tar.gz'
Content type 'application/x-gzip' length 3001165 bytes (2.9 MB)
==================================================
downloaded 2.9 MB

* installing *binary* package ‘palmerpenguins’ ...
* DONE (palmerpenguins)

The downloaded source packages are in
	‘/tmp/RtmpK4XIyv/downloaded_packages’
> library("palmerpenguins")
> skim_without_charts(penguins)
Error in skim_without_charts(penguins) : 
  could not find function "skim_without_charts"

> penguins
# A tibble: 344 × 8
   species island    bill_length_mm bill_depth_mm
   <fct>   <fct>              <dbl>         <dbl>
 1 Adelie  Torgersen           39.1          18.7
 2 Adelie  Torgersen           39.5          17.4
 3 Adelie  Torgersen           40.3          18  
 4 Adelie  Torgersen           NA            NA  
 5 Adelie  Torgersen           36.7          19.3
 6 Adelie  Torgersen           39.3          20.6
 7 Adelie  Torgersen           38.9          17.8
 8 Adelie  Torgersen           39.2          19.6
 9 Adelie  Torgersen           34.1          18.1
10 Adelie  Torgersen           42            20.2
# ℹ 334 more rows
# ℹ 4 more variables: flipper_length_mm <int>,
#   body_mass_g <int>, sex <fct>, year <int>
# ℹ Use `print(n = ...)` to see more rows

# data-set preview 

> skim_without_charts(penguins)

> glimpse(penguins_raw)

Rows: 344
Columns: 17
$ studyName             <chr> "PAL0708", "PAL0708", "PAL070…
$ `Sample Number`       <dbl> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10…
$ Species               <chr> "Adelie Penguin (Pygoscelis a…
$ Region                <chr> "Anvers", "Anvers", "Anvers",…
$ Island                <chr> "Torgersen", "Torgersen", "To…
$ Stage                 <chr> "Adult, 1 Egg Stage", "Adult,…
$ `Individual ID`       <chr> "N1A1", "N1A2", "N2A1", "N2A2…
$ `Clutch Completion`   <chr> "Yes", "Yes", "Yes", "Yes", "…
$ `Date Egg`            <date> 2007-11-11, 2007-11-11, 2007…
$ `Culmen Length (mm)`  <dbl> 39.1, 39.5, 40.3, NA, 36.7, 3…
$ `Culmen Depth (mm)`   <dbl> 18.7, 17.4, 18.0, NA, 19.3, 2…
$ `Flipper Length (mm)` <dbl> 181, 186, 195, NA, 193, 190, …
$ `Body Mass (g)`       <dbl> 3750, 3800, 3250, NA, 3450, 3…
$ Sex                   <chr> "MALE", "FEMALE", "FEMALE", N…
$ `Delta 15 N (o/oo)`   <dbl> NA, 8.94956, 8.36821, NA, 8.7…
$ `Delta 13 C (o/oo)`   <dbl> NA, -24.69454, -25.33302, NA,…
$ Comments              <chr> "Not enough blood for isotope…
> head(penguins)
# A tibble: 6 × 8
  species island    bill_length_mm bill_depth_mm
  <fct>   <fct>              <dbl>         <dbl>
1 Adelie  Torgersen           39.1          18.7
2 Adelie  Torgersen           39.5          17.4
3 Adelie  Torgersen           40.3          18  
4 Adelie  Torgersen           NA            NA  
5 Adelie  Torgersen           36.7          19.3
6 Adelie  Torgersen           39.3          20.6
# ℹ 4 more variables: flipper_length_mm <int>,
#   body_mass_g <int>, sex <fct>, year <int>

> penguins %>%
+   select(species)

# A tibble: 344 × 1
   species
   <fct>  
 1 Adelie 
 2 Adelie 
 3 Adelie 
 4 Adelie 
 5 Adelie 
 6 Adelie 
 7 Adelie 
 8 Adelie 
 9 Adelie 
10 Adelie 
# ℹ 334 more rows
# ℹ Use `print(n = ...)` to see more rows

> penguins %>%
+   select(-species)

# A tibble: 344 × 7
   island    bill_length_mm bill_depth_mm flipper_length_mm
   <fct>              <dbl>         <dbl>             <int>
 1 Torgersen           39.1          18.7               181
 2 Torgersen           39.5          17.4               186
 3 Torgersen           40.3          18                 195
 4 Torgersen           NA            NA                  NA
 5 Torgersen           36.7          19.3               193
 6 Torgersen           39.3          20.6               190
 7 Torgersen           38.9          17.8               181
 8 Torgersen           39.2          19.6               195
 9 Torgersen           34.1          18.1               193
10 Torgersen           42            20.2               190
# ℹ 334 more rows
# ℹ 3 more variables: body_mass_g <int>, sex <fct>,
#   year <int>
# ℹ Use `print(n = ...)` to see more rows
> penguins %>%
+   rename(is
+ penguins %>%
Error: unexpected symbol in:
"  rename(is
penguins"

# rename columns

> penguins %>%
+   rename(island_new=island)

# A tibble: 344 × 8
   species island_new bill_length_mm bill_depth_mm
   <fct>   <fct>               <dbl>         <dbl>
 1 Adelie  Torgersen            39.1          18.7
 2 Adelie  Torgersen            39.5          17.4
 3 Adelie  Torgersen            40.3          18  
 4 Adelie  Torgersen            NA            NA  
 5 Adelie  Torgersen            36.7          19.3
 6 Adelie  Torgersen            39.3          20.6
 7 Adelie  Torgersen            38.9          17.8
 8 Adelie  Torgersen            39.2          19.6
 9 Adelie  Torgersen            34.1          18.1
10 Adelie  Torgersen            42            20.2
# ℹ 334 more rows
# ℹ 4 more variables: flipper_length_mm <int>,
#   body_mass_g <int>, sex <fct>, year <int>
# ℹ Use `print(n = ...)` to see more rows

# rename columns with UPPER or lower case letters

> rename_with(penguins,toupper)

# A tibble: 344 × 8
   SPECIES ISLAND    BILL_LENGTH_MM BILL_DEPTH_MM
   <fct>   <fct>              <dbl>         <dbl>
 1 Adelie  Torgersen           39.1          18.7
 2 Adelie  Torgersen           39.5          17.4
 3 Adelie  Torgersen           40.3          18  
 4 Adelie  Torgersen           NA            NA  
 5 Adelie  Torgersen           36.7          19.3
 6 Adelie  Torgersen           39.3          20.6
 7 Adelie  Torgersen           38.9          17.8
 8 Adelie  Torgersen           39.2          19.6
 9 Adelie  Torgersen           34.1          18.1
10 Adelie  Torgersen           42            20.2
# ℹ 334 more rows
# ℹ 4 more variables: FLIPPER_LENGTH_MM <int>,
#   BODY_MASS_G <int>, SEX <fct>, YEAR <int>
# ℹ Use `print(n = ...)` to see more rows

> rename_with(penguins,tolower)

# A tibble: 344 × 8
   species island    bill_length_mm bill_depth_mm
   <fct>   <fct>              <dbl>         <dbl>
 1 Adelie  Torgersen           39.1          18.7
 2 Adelie  Torgersen           39.5          17.4
 3 Adelie  Torgersen           40.3          18  
 4 Adelie  Torgersen           NA            NA  
 5 Adelie  Torgersen           36.7          19.3
 6 Adelie  Torgersen           39.3          20.6
 7 Adelie  Torgersen           38.9          17.8
 8 Adelie  Torgersen           39.2          19.6
 9 Adelie  Torgersen           34.1          18.1
10 Adelie  Torgersen           42            20.2
# ℹ 334 more rows
# ℹ 4 more variables: flipper_length_mm <int>,
#   body_mass_g <int>, sex <fct>, year <int>
# ℹ Use `print(n = ...)` to see more rows
> clean_names(penguins)
