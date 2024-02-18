>library(readr)
> hotel_bookings <- read_csv("Course 7/Week 3/hotel_bookings.csv")
Rows: 119390 Columns: 32                                                                      
── Column specification ───────────────────────────────────
Delimiter: ","
chr  (13): hotel, arrival_date_month, meal, country, ma...
dbl  (18): is_canceled, lead_time, arrival_date_year, a...
date  (1): reservation_status_date

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> View(hotel_bookings)
> read_csv()
Error in read_csv() : argument "file" is missing, with no default
> read_csv("hotel_bookings.csv")
Rows: 119390 Columns: 32                                                                      
── Column specification ───────────────────────────────────
Delimiter: ","
chr  (13): hotel, arrival_date_month, meal, country, ma...
dbl  (18): is_canceled, lead_time, arrival_date_year, a...
date  (1): reservation_status_date

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
# A tibble: 119,390 × 32
   hotel        is_canceled lead_time arrival_date_year
   <chr>              <dbl>     <dbl>             <dbl>
 1 Resort Hotel           0       342              2015
 2 Resort Hotel           0       737              2015
 3 Resort Hotel           0         7              2015
 4 Resort Hotel           0        13              2015
 5 Resort Hotel           0        14              2015
 6 Resort Hotel           0        14              2015
 7 Resort Hotel           0         0              2015
 8 Resort Hotel           0         9              2015
 9 Resort Hotel           1        85              2015
10 Resort Hotel           1        75              2015
# ℹ 119,380 more rows
# ℹ 28 more variables: arrival_date_month <chr>,
#   arrival_date_week_number <dbl>,
#   arrival_date_day_of_month <dbl>,
#   stays_in_weekend_nights <dbl>,
#   stays_in_week_nights <dbl>, adults <dbl>,
#   children <dbl>, babies <dbl>, meal <chr>, …
# ℹ Use `print(n = ...)` to see more rows
> bookings_df <- read_csv("hotel_bookings.csv")
Rows: 119390 Columns: 32                                                                      
── Column specification ───────────────────────────────────
Delimiter: ","
chr  (13): hotel, arrival_date_month, meal, country, ma...
dbl  (18): is_canceled, lead_time, arrival_date_year, a...
date  (1): reservation_status_date

ℹ Use `spec()` to retrieve the full column specification for this data.
ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
> head()
Error in head.default() : argument "x" is missing, with no default
> head(hotel_bookings)
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
> str(hotel_bookings)
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
> new_df <- select(bookings_df, `adr` / adults)
> mutate(new_df, total = `adr` / adults)
Error in `mutate()`: # Bugs
ℹ In argument: `total = adr/adults`.
Caused by error:
! object 'adults' not found
Run `rlang::last_trace()` to see where the error occurred.
> mutate(new_df, total = `adr` / adults)
Error in `mutate()`:
ℹ In argument: `total = adr/adults`.
Caused by error:
! object 'adults' not found
Run `rlang::last_trace()` to see where the error occurred.
> rlang::last_trace()
<error/dplyr:::mutate_error>
Error in `mutate()`:
ℹ In argument: `total = adr/adults`.
Caused by error:
! object 'adults' not found
---
Backtrace:
    ▆
 1. ├─dplyr::mutate(new_df, total = adr/adults)
 2. └─dplyr:::mutate.data.frame(new_df, total = adr/adults)
 3.   └─dplyr:::mutate_cols(.data, dplyr_quosures(...), by)
 4.     ├─base::withCallingHandlers(...)
 5.     └─dplyr:::mutate_col(dots[[i]], data, mask, new_columns)
 6.       └─mask$eval_all_mutate(quo)
 7.         └─dplyr (local) eval()
Run rlang::last_trace(drop = FALSE) to see 3 hidden frames.
> new_df <- select(bookings_df, `adr`, adults)
> mutate(new_df, total = `adr` / adults)
# A tibble: 119,390 × 3
     adr adults total
   <dbl>  <dbl> <dbl>
 1    0       2   0  
 2    0       2   0  
 3   75       1  75  
 4   75       1  75  
 5   98       2  49  
 6   98       2  49  
 7  107       2  53.5
 8  103       2  51.5
 9   82       2  41  
10  106.      2  52.8
# ℹ 119,380 more rows
# ℹ Use `print(n = ...)` to see more rows
> 
