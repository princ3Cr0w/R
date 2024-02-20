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

# Organizing and filtering data (penguins)

## Arrange bill length in ASC order

>penguins %>% arrange(bill_length_mm)
# A tibble: 344 × 8
   species island    bill_length_mm bill_depth_mm
   <fct>   <fct>              <dbl>         <dbl>
 1 Adelie  Dream               32.1          15.5
 2 Adelie  Dream               33.1          16.1
 3 Adelie  Torgersen           33.5          19  
 4 Adelie  Dream               34            17.1
 5 Adelie  Torgersen           34.1          18.1
 6 Adelie  Torgersen           34.4          18.4
 7 Adelie  Biscoe              34.5          18.1
 8 Adelie  Torgersen           34.6          21.1
 9 Adelie  Torgersen           34.6          17.2
10 Adelie  Biscoe              35            17.9
# ℹ 334 more rows
# ℹ 4 more variables: flipper_length_mm <int>,
#   body_mass_g <int>, sex <fct>, year <int>
# ℹ Use `print(n = ...)` to see more rows

## Arrange bill length in DESC order

> penguins %>% arrange(-bill_length_mm)
# A tibble: 344 × 8
   species   island bill_length_mm bill_depth_mm
   <fct>     <fct>           <dbl>         <dbl>
 1 Gentoo    Biscoe           59.6          17  
 2 Chinstrap Dream            58            17.8
 3 Gentoo    Biscoe           55.9          17  
 4 Chinstrap Dream            55.8          19.8
 5 Gentoo    Biscoe           55.1          16  
 6 Gentoo    Biscoe           54.3          15.7
 7 Chinstrap Dream            54.2          20.8
 8 Chinstrap Dream            53.5          19.9
 9 Gentoo    Biscoe           53.4          15.8
10 Chinstrap Dream            52.8          20  
# ℹ 334 more rows
# ℹ 4 more variables: flipper_length_mm <int>,
#   body_mass_g <int>, sex <fct>, year <int>
# ℹ Use `print(n = ...)` to see more rows

## Summarize and group by mean bill length

> penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))
# A tibble: 3 × 2
  island    mean_bill_length_mm
  <fct>                   <dbl>
1 Biscoe                   45.2
2 Dream                    44.2
3 Torgersen                39.0

## Summarize and group by max bill length

> penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm))
# A tibble: 3 × 2
  island    max_bill_length_mm
  <fct>                  <dbl>
1 Biscoe                  59.6
2 Dream                   58  
3 Torgersen               46  

## Summarize and group by both mean and max bill length

> penguins %>% group_by(species, island) %>% drop_na() %>% summarize(max_bl = max(bill_length_mm), mean_bl = mean(bill_length_mm))
`summarise()` has grouped output by 'species'. You can
override using the `.groups` argument.
# A tibble: 5 × 4
# Groups:   species [3]
  species   island    max_bl mean_bl
  <fct>     <fct>      <dbl>   <dbl>
1 Adelie    Biscoe      45.6    39.0
2 Adelie    Dream       44.1    38.5
3 Adelie    Torgersen   46      39.0
4 Chinstrap Dream       58      48.8
5 Gentoo    Biscoe      59.6    47.6

## Filter showing only Adelie penguin

> penguins %>% filter(species == "Adelie")
# A tibble: 152 × 8
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
# ℹ 142 more rows
# ℹ 4 more variables: flipper_length_mm <int>,
#   body_mass_g <int>, sex <fct>, year <int>
# ℹ Use `print(n = ...)` to see more rows
> 

# Sandbox practice cleaning (bookings_df) - given that tidyverse is installed, library (skimr, janitor, readr) as well:

bookings_df <- read_csv("hotel_bookings.csv")
Rows: 119390 Columns: 32                                                                      
── Column specification ───────────────────────────────────
Delimiter: ","
chr  (13): hotel, arrival_date_month, meal, country, ma...
dbl  (18): is_canceled, lead_time, arrival_date_year, a...
date  (1): reservation_status_date

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> head(hotel_bookings)
Error: object 'hotel_bookings' not found
> head("hotel_bookings.csv")
[1] "hotel_bookings.csv"
> head(bookings_df)
# A tibble: 6 × 32
  hotel        is_canceled lead_time arrival_date_year
  <chr>              <dbl>     <dbl>             <dbl>
1 Resort Hotel           0       342              2015
2 Resort Hotel           0       737              2015
3 Resort Hotel           0         7              2015
4 Resort Hotel           0        13              2015
5 Resort Hotel           0        14              2015
6 Resort Hotel           0        14              2015
# ℹ 28 more variables: arrival_date_month <chr>,
#   arrival_date_week_number <dbl>,
#   arrival_date_day_of_month <dbl>,
#   stays_in_weekend_nights <dbl>,
#   stays_in_week_nights <dbl>, adults <dbl>,
#   children <dbl>, babies <dbl>, meal <chr>,
#   country <chr>, market_segment <chr>, …
> str(bookings_df)
spc_tbl_ [119,390 × 32] (S3: spec_tbl_df/tbl_df/tbl/data.frame)
 $ hotel                         : chr [1:119390] "Resort Hotel" "Resort Hotel" "Resort Hotel" "Resort Hotel" ...
 $ is_canceled                   : num [1:119390] 0 0 0 0 0 0 0 0 1 1 ...
 $ lead_time                     : num [1:119390] 342 737 7 13 14 14 0 9 85 75 ...
 $ arrival_date_year             : num [1:119390] 2015 2015 2015 2015 2015 ...
 $ arrival_date_month            : chr [1:119390] "July" "July" "July" "July" ...
 $ arrival_date_week_number      : num [1:119390] 27 27 27 27 27 27 27 27 27 27 ...
 $ arrival_date_day_of_month     : num [1:119390] 1 1 1 1 1 1 1 1 1 1 ...
 $ stays_in_weekend_nights       : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
 $ stays_in_week_nights          : num [1:119390] 0 0 1 1 2 2 2 2 3 3 ...
 $ adults                        : num [1:119390] 2 2 1 1 2 2 2 2 2 2 ...
 $ children                      : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
 $ babies                        : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
 $ meal                          : chr [1:119390] "BB" "BB" "BB" "BB" ...
 $ country                       : chr [1:119390] "PRT" "PRT" "GBR" "GBR" ...
 $ market_segment                : chr [1:119390] "Direct" "Direct" "Direct" "Corporate" ...
 $ distribution_channel          : chr [1:119390] "Direct" "Direct" "Direct" "Corporate" ...
 $ is_repeated_guest             : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
 $ previous_cancellations        : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
 $ previous_bookings_not_canceled: num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
 $ reserved_room_type            : chr [1:119390] "C" "C" "A" "A" ...
 $ assigned_room_type            : chr [1:119390] "C" "C" "C" "A" ...
 $ booking_changes               : num [1:119390] 3 4 0 0 0 0 0 0 0 0 ...
 $ deposit_type                  : chr [1:119390] "No Deposit" "No Deposit" "No Deposit" "No Deposit" ...
 $ agent                         : chr [1:119390] "NULL" "NULL" "NULL" "304" ...
 $ company                       : chr [1:119390] "NULL" "NULL" "NULL" "NULL" ...
 $ days_in_waiting_list          : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
 $ customer_type                 : chr [1:119390] "Transient" "Transient" "Transient" "Transient" ...
 $ adr                           : num [1:119390] 0 0 75 75 98 ...
 $ required_car_parking_spaces   : num [1:119390] 0 0 0 0 0 0 0 0 0 0 ...
 $ total_of_special_requests     : num [1:119390] 0 0 0 0 1 1 0 1 1 0 ...
 $ reservation_status            : chr [1:119390] "Check-Out" "Check-Out" "Check-Out" "Check-Out" ...
 $ reservation_status_date       : Date[1:119390], format: "2015-07-01" ...
 - attr(*, "spec")=
  .. cols(
  ..   hotel = col_character(),
  ..   is_canceled = col_double(),
  ..   lead_time = col_double(),
  ..   arrival_date_year = col_double(),
  ..   arrival_date_month = col_character(),
  ..   arrival_date_week_number = col_double(),
  ..   arrival_date_day_of_month = col_double(),
  ..   stays_in_weekend_nights = col_double(),
  ..   stays_in_week_nights = col_double(),
  ..   adults = col_double(),
  ..   children = col_double(),
  ..   babies = col_double(),
  ..   meal = col_character(),
  ..   country = col_character(),
  ..   market_segment = col_character(),
  ..   distribution_channel = col_character(),
  ..   is_repeated_guest = col_double(),
  ..   previous_cancellations = col_double(),
  ..   previous_bookings_not_canceled = col_double(),
  ..   reserved_room_type = col_character(),
  ..   assigned_room_type = col_character(),
  ..   booking_changes = col_double(),
  ..   deposit_type = col_character(),
  ..   agent = col_character(),
  ..   company = col_character(),
  ..   days_in_waiting_list = col_double(),
  ..   customer_type = col_character(),
  ..   adr = col_double(),
  ..   required_car_parking_spaces = col_double(),
  ..   total_of_special_requests = col_double(),
  ..   reservation_status = col_character(),
  ..   reservation_status_date = col_date(format = "")
  .. )
 - attr(*, "problems")=<externalptr> 
> glimpse(bookings_df)
Rows: 119,390
Columns: 32
$ hotel                          <chr> "Resort Hotel", "R…
$ is_canceled                    <dbl> 0, 0, 0, 0, 0, 0, …
$ lead_time                      <dbl> 342, 737, 7, 13, 1…
$ arrival_date_year              <dbl> 2015, 2015, 2015, …
$ arrival_date_month             <chr> "July", "July", "J…
$ arrival_date_week_number       <dbl> 27, 27, 27, 27, 27…
$ arrival_date_day_of_month      <dbl> 1, 1, 1, 1, 1, 1, …
$ stays_in_weekend_nights        <dbl> 0, 0, 0, 0, 0, 0, …
$ stays_in_week_nights           <dbl> 0, 0, 1, 1, 2, 2, …
$ adults                         <dbl> 2, 2, 1, 1, 2, 2, …
$ children                       <dbl> 0, 0, 0, 0, 0, 0, …
$ babies                         <dbl> 0, 0, 0, 0, 0, 0, …
$ meal                           <chr> "BB", "BB", "BB", …
$ country                        <chr> "PRT", "PRT", "GBR…
$ market_segment                 <chr> "Direct", "Direct"…
$ distribution_channel           <chr> "Direct", "Direct"…
$ is_repeated_guest              <dbl> 0, 0, 0, 0, 0, 0, …
$ previous_cancellations         <dbl> 0, 0, 0, 0, 0, 0, …
$ previous_bookings_not_canceled <dbl> 0, 0, 0, 0, 0, 0, …
$ reserved_room_type             <chr> "C", "C", "A", "A"…
$ assigned_room_type             <chr> "C", "C", "C", "A"…
$ booking_changes                <dbl> 3, 4, 0, 0, 0, 0, …
$ deposit_type                   <chr> "No Deposit", "No …
$ agent                          <chr> "NULL", "NULL", "N…
$ company                        <chr> "NULL", "NULL", "N…
$ days_in_waiting_list           <dbl> 0, 0, 0, 0, 0, 0, …
$ customer_type                  <chr> "Transient", "Tran…
$ adr                            <dbl> 0.00, 0.00, 75.00,…
$ required_car_parking_spaces    <dbl> 0, 0, 0, 0, 0, 0, …
$ total_of_special_requests      <dbl> 0, 0, 0, 0, 1, 1, …
$ reservation_status             <chr> "Check-Out", "Chec…
$ reservation_status_date        <date> 2015-07-01, 2015-…
> colnames(bookings_df)
 [1] "hotel"                         
 [2] "is_canceled"                   
 [3] "lead_time"                     
 [4] "arrival_date_year"             
 [5] "arrival_date_month"            
 [6] "arrival_date_week_number"      
 [7] "arrival_date_day_of_month"     
 [8] "stays_in_weekend_nights"       
 [9] "stays_in_week_nights"          
[10] "adults"                        
[11] "children"                      
[12] "babies"                        
[13] "meal"                          
[14] "country"                       
[15] "market_segment"                
[16] "distribution_channel"          
[17] "is_repeated_guest"             
[18] "previous_cancellations"        
[19] "previous_bookings_not_canceled"
[20] "reserved_room_type"            
[21] "assigned_room_type"            
[22] "booking_changes"               
[23] "deposit_type"                  
[24] "agent"                         
[25] "company"                       
[26] "days_in_waiting_list"          
[27] "customer_type"                 
[28] "adr"                           
[29] "required_car_parking_spaces"   
[30] "total_of_special_requests"     
[31] "reservation_status"            
[32] "reservation_status_date"       
> skim_without_charts(bookings_df)
── Data Summary ────────────────────────
                           Values     
Name                       bookings_df
Number of rows             119390     
Number of columns          32         
_______________________               
Column type frequency:                
  character                13         
  Date                     1          
  numeric                  18         
________________________              
Group variables            None       

── Variable type: character ───────────────────────────────
   skim_variable        n_missing complete_rate min max
 1 hotel                        0             1  10  12
 2 arrival_date_month           0             1   3   9
 3 meal                         0             1   2   9
 4 country                      0             1   2   4
 5 market_segment               0             1   6  13
 6 distribution_channel         0             1   3   9
 7 reserved_room_type           0             1   1   1
 8 assigned_room_type           0             1   1   1
 9 deposit_type                 0             1  10  10
10 agent                        0             1   1   4
11 company                      0             1   1   4
12 customer_type                0             1   5  15
13 reservation_status           0             1   7   9
   empty n_unique whitespace
 1     0        2          0
 2     0       12          0
 3     0        5          0
 4     0      178          0
 5     0        8          0
 6     0        5          0
 7     0       10          0
 8     0       12          0
 9     0        3          0
10     0      334          0
11     0      353          0
12     0        4          0
13     0        3          0

── Variable type: Date ────────────────────────────────────
  skim_variable           n_missing complete_rate
1 reservation_status_date         0             1
  min        max        median     n_unique
1 2014-10-17 2017-09-14 2016-08-07      926

── Variable type: numeric ─────────────────────────────────
   skim_variable                  n_missing complete_rate
 1 is_canceled                            0          1   
 2 lead_time                              0          1   
 3 arrival_date_year                      0          1   
 4 arrival_date_week_number               0          1   
 5 arrival_date_day_of_month              0          1   
 6 stays_in_weekend_nights                0          1   
 7 stays_in_week_nights                   0          1   
 8 adults                                 0          1   
 9 children                               4          1.00
10 babies                                 0          1   
11 is_repeated_guest                      0          1   
12 previous_cancellations                 0          1   
13 previous_bookings_not_canceled         0          1   
14 booking_changes                        0          1   
15 days_in_waiting_list                   0          1   
16 adr                                    0          1   
17 required_car_parking_spaces            0          1   
18 total_of_special_requests              0          1   
         mean       sd      p0    p25    p50  p75 p100
 1    0.370     0.483     0       0      0      1    1
 2  104.      107.        0      18     69    160  737
 3 2016.        0.707  2015    2016   2016   2017 2017
 4   27.2      13.6       1      16     28     38   53
 5   15.8       8.78      1       8     16     23   31
 6    0.928     0.999     0       0      1      2   19
 7    2.50      1.91      0       1      2      3   50
 8    1.86      0.579     0       2      2      2   55
 9    0.104     0.399     0       0      0      0   10
10    0.00795   0.0974    0       0      0      0   10
11    0.0319    0.176     0       0      0      0    1
12    0.0871    0.844     0       0      0      0   26
13    0.137     1.50      0       0      0      0   72
14    0.221     0.652     0       0      0      0   21
15    2.32     17.6       0       0      0      0  391
16  102.       50.5      -6.38   69.3   94.6  126 5400
17    0.0625    0.245     0       0      0      0    8
18    0.571     0.793     0       0      0      1    5
> trimmed_df <- bookings_df %>% 
+     select(hotel, is_canceled, lead_time)
> View(trimmed_df)
