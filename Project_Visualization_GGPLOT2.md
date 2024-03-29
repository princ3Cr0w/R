# Ggplot2 visualization of Palmer Penguins and analysis of Hotel Bookings
### Quick reference <ahref>https://ggplot2.tidyverse.org/</ahref><br>
<sup> Best practice: Run the colname(), head(), and glimpse() to preview data and the types before the analysis and visualization </sup>
```r
install.packages("ggplot2")
Error in install.packages : Updating loaded packages
> install.packages("ggplot2")
Installing package into ‘/cloud/lib/x86_64-pc-linux-gnu-library/4.3’
(as ‘lib’ is unspecified)
trying URL 'http://rspm/default/__linux__/focal/latest/src/contrib/ggplot2_3.4.4.tar.gz'
Content type 'application/x-gzip' length 4288941 bytes (4.1 MB)
==================================================
downloaded 4.1 MB

* installing *binary* package ‘ggplot2’ ...
* DONE (ggplot2)

The downloaded source packages are in
	‘/tmp/RtmpjhuQ2a/downloaded_packages’
> install.packages("palmerpenguins")
Error in install.packages : Updating loaded packages
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
	‘/tmp/RtmpjhuQ2a/downloaded_packages’
> library(ggplot2)
> library(palmerpenguins)
> data(palmerpenguins)
Warning message:
In data(palmerpenguins) : data set ‘palmerpenguins’ not found
> data(penguins)
> View(penguins)

```r

-- ggplot code:

>ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

```

![Snip](https://github.com/princ3Cr0w/R/blob/main/Screenshot%202024-02-24%20195144.png)

<sup>Inspecting the plot visualization of the penguins show positive relations or body mass and flipper length; the larger the penguin, the longer the flippers</sup>

## Subtask from stakeholder: How we differentiate the species of penguins apart? 

```r

-- ggplot code for viz colorization:

ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species))

```

![Snip](https://github.com/princ3Cr0w/R/blob/main/Screenshot%202024-02-26%20194418.png)

<sup> As we can see, the viz differentiated the 3 species: Adelie, Gentoo, and Chinstrap in 3 different colors for easy identification </sup>

>[!Note]
>We can also use shapes in lieu of colors or both and even with plot size<br>
>code: ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, shape=species))<br>
>or ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, shape=species, color=species))<br>
>or size=species<br>

```r
-- Extra- ggplot for smoothlines with colors and more:

 ggplot(data=penguins)+geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g, shape=species, color=species))
`geom_smooth()` using method = 'loess' and formula = 'y ~
x'
-- combo of smooth line and plot:

> ggplot(data=penguins)+geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g)) + geom_point (mapping=aes(x=flipper_length_mm, y=body_mass_g))

-- facet wrap for separation by color and plot points

> ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species)) + facet_wrap(~species)

-- facet grid for separate species and sex using plot

> ggplot(data=penguins)+geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g, color=species)) + facet_grid(sex~species)

-- Annotation Layer:

ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) + labs(title = "Palmer Penguins: Body Mass vs Flipper Length")



```

<br></br>
## Hotel Bookings analysis and visualization
<br>

<sup> Best practice: Run the colname(), head(), and glimpse() to preview data and the types before the analysis and visualization </sup>

```r
hotel_bookings <- read.csv("hotel_bookings.csv")
> View(hotel_bookings)
> head(hotel_bookings)
         hotel is_canceled lead_time arrival_date_year
1 Resort Hotel           0       342              2015
2 Resort Hotel           0       737              2015
3 Resort Hotel           0         7              2015
4 Resort Hotel           0        13              2015
5 Resort Hotel           0        14              2015
6 Resort Hotel           0        14              2015
  arrival_date_month arrival_date_week_number
1               July                       27
2               July                       27
3               July                       27
4               July                       27
5               July                       27
6               July                       27
  arrival_date_day_of_month stays_in_weekend_nights
1                         1                       0
2                         1                       0
3                         1                       0
4                         1                       0
5                         1                       0
6                         1                       0
  stays_in_week_nights adults children babies meal country
1                    0      2        0      0   BB     PRT
2                    0      2        0      0   BB     PRT
3                    1      1        0      0   BB     GBR
4                    1      1        0      0   BB     GBR
5                    2      2        0      0   BB     GBR
6                    2      2        0      0   BB     GBR
  market_segment distribution_channel is_repeated_guest
1         Direct               Direct                 0
2         Direct               Direct                 0
3         Direct               Direct                 0
4      Corporate            Corporate                 0
5      Online TA                TA/TO                 0
6      Online TA                TA/TO                 0
  previous_cancellations previous_bookings_not_canceled
1                      0                              0
2                      0                              0
3                      0                              0
4                      0                              0
5                      0                              0
6                      0                              0
  reserved_room_type assigned_room_type booking_changes
1                  C                  C               3
2                  C                  C               4
3                  A                  C               0
4                  A                  A               0
5                  A                  A               0
6                  A                  A               0
  deposit_type agent company days_in_waiting_list
1   No Deposit  NULL    NULL                    0
2   No Deposit  NULL    NULL                    0
3   No Deposit  NULL    NULL                    0
4   No Deposit   304    NULL                    0
5   No Deposit   240    NULL                    0
6   No Deposit   240    NULL                    0
  customer_type adr required_car_parking_spaces
1     Transient   0                           0
2     Transient   0                           0
3     Transient  75                           0
4     Transient  75                           0
5     Transient  98                           0
6     Transient  98                           0
  total_of_special_requests reservation_status
1                         0          Check-Out
2                         0          Check-Out
3                         0          Check-Out
4                         0          Check-Out
5                         1          Check-Out
6                         1          Check-Out
  reservation_status_date
1              2015-07-01
2              2015-07-01
3              2015-07-02
4              2015-07-02
5              2015-07-03
6              2015-07-03
> colnames(hotel_bookings)
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
> install.packages('ggplot2')
Installing package into ‘/cloud/lib/x86_64-pc-linux-gnu-library/4.3’
(as ‘lib’ is unspecified)
trying URL 'http://rspm/default/__linux__/focal/latest/src/contrib/ggplot2_3.4.4.tar.gz'
Content type 'application/x-gzip' length 4288941 bytes (4.1 MB)
==================================================
downloaded 4.1 MB

* installing *binary* package ‘ggplot2’ ...
* DONE (ggplot2)

The downloaded source packages are in
	‘/tmp/Rtmpp1MiKk/downloaded_packages’
> library(ggplot2)
```

### Task: A stakeholder tells you, "I want to target people who book early, and I have a hypothesis that people with children have to book in advance."

When you start to explore the data, it doesn't show what you would expect. That is why you decide to create a visualization to see how true that statement is-- or isn't.

```r
-- code:

> ggplot(data = hotel_bookings) +
+     geom_point(mapping = aes(x = lead_time, y = children))

-- plot viz:
```
![Snip](https://github.com/princ3Cr0w/R/blob/main/Screenshot%202024-02-24%20204232.png?raw=true)

<sup> As seen on the viz, the stakeholder's hypothesis is incorrect; increased lead time does not correlate to parents with children booking earlier </sup>





### Task: Stakeholder says that she wants to increase weekend bookings, an important source of revenue for the hotel. Your stakeholder wants to know what group of guests book the most weekend nights in order to target that group in a new marketing campaign. She suggests that guests without children book the most weekend nights. Is this true? 

```r

-- code

> ggplot(data = hotel_bookings) +
+     geom_point(mapping = aes(x = stays_in_weekend_nights, y = children ))
Warning message:

-- plot viz:

```


![Snip](https://github.com/princ3Cr0w/R/blob/main/Screenshot%202024-02-24%20204732.png?raw=true)

<sup> Stakeholder's hypothesis is correct; more bookings were made by people without children on weekends </sup>

### Sub-task: Your stakeholder is interested in developing promotions based on different booking distributions, but first they need to know how many of the transactions are occurring for each different distribution type.

```r
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel))
-- viz:
```

![Snip](https://github.com/princ3Cr0w/R/blob/main/Screen%20Shot%202024-02-27%20at%209.37.13%20PM.png?raw=true)

### 2nd Sub-task: After exploring your bar chart, your stakeholder has more questions. Now they want to know if the number of bookings for each distribution type is different depending on whether or not there was a deposit or what market segment they represent. 

```r
ggplot(data = hotel_bookings) +
+     geom_bar(mapping = aes(x = distribution_channel, fill = market_segment))

-- viz:

```
![Snip](https://github.com/princ3Cr0w/R/blob/main/Screen%20Shot%202024-02-27%20at%209.48.35%20PM.png?raw=true)

### 3rd Sub-task: After reviewing the new charts, your stakeholder asks you to create separate charts for each deposit type and market segment to help them understand the differences more clearly.

```r
ggplot(data = hotel_bookings) +
+     geom_bar(mapping = aes(x = distribution_channel)) +
+     facet_wrap(~deposit_type) +
+     theme(axis.text.x = element_text(angle = 45))

-- viz:

```
![Snip](https://github.com/princ3Cr0w/R/blob/main/Screen%20Shot%202024-02-27%20at%209.56.43%20PM.png?raw=true)

<sup> Conclusion: TA/TO has the highest distribution in the bookings </sup>

## Adding Annotations to plots

```r
> ggplot(data = hotel_bookings) +
+     geom_bar(mapping = aes(x = market_segment)) +
+     facet_wrap(~hotel) + labs(title="Market Segment")

-- viz:
```
![Snip](https://github.com/princ3Cr0w/R/blob/main/Screen%20Shot%202024-02-29%20at%209.59.05%20PM.png?raw=true)

<sup> The plot now has annotation or title: "Market Segment" </sup>

```r

-- Additional layer to the annotations by adding year min+max:

> mindate <- min(hotel_bookings$arrival_date_year)
> maxdate <- max(hotel_bookings$arrival_date_year)
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       subtitle=paste0("Data from: ", mindate, " to ", maxdate))

-- Alternate code for disperesed annotations in the plot:

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate))


