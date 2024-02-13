-- Piping for nesting functions

data("ToothGrowth")
View(ToothGrowth)

filtered_tg <- filter(ToothGrowth,dose==0.5)
View(filtered_tg)

arrange(filtered_tg,len)

arrange(filter(ToothGrowth,dose==0.5),len)

filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>%
  group_by(supp) %>% 
  summarize(mean_lean = mean(len,na.rm = T),.group="drop")

-- results in console

data("ToothGrowth")
View(ToothGrowth)
filtered_tg <- filter(ToothGrowth,dose==0.5)
View(filtered_tg)
arrange(filtered_tg,len)
arrange(filter(ToothGrowth,dose==0.5,len)
arrange(filter(ToothGrowth,dose==0.5),len)
arrange(filter(ToothGrowth,dose==0.5),len)
filtered_toothgrowth <- ToothGrowth %>%
filter(dose==0.5) %>%
arrange(len)
arrange(len)
filtered_toothgrowth <- ToothGrowth %>%
filter(dose==0.5) %>%
arrange(len)
View(filtered_toothgrowth)
filtered_toothgrowth <- ToothGrowth %>%
filter(dose==0.5) %>%
group_by(supp) %>%
summarize(mean_lean = mean(len,na.rm = T),.group="drop")
filtered_toothgrowth
data("ToothGrowth")
View(ToothGrowth)


> data("ToothGrowth")
> View(ToothGrowth)
> filtered_tg <- filter(ToothGrowth,dose==0.5)
> View(filtered_tg)
> arrange(filtered_tg,len)
    len supp dose
1   4.2   VC  0.5
2   5.2   VC  0.5
3   5.8   VC  0.5
4   6.4   VC  0.5
5   7.0   VC  0.5
6   7.3   VC  0.5
7   8.2   OJ  0.5
8   9.4   OJ  0.5
9   9.7   OJ  0.5
10  9.7   OJ  0.5
11 10.0   VC  0.5
12 10.0   OJ  0.5
13 11.2   VC  0.5
14 11.2   VC  0.5
15 11.5   VC  0.5
16 14.5   OJ  0.5
17 15.2   OJ  0.5
18 16.5   OJ  0.5
19 17.6   OJ  0.5
20 21.5   OJ  0.5
> arrange(filter(ToothGrowth,dose==0.5,len)
+ arrange(filter(ToothGrowth,dose==0.5),len)
Error: unexpected symbol in:
"arrange(filter(ToothGrowth,dose==0.5,len)
arrange"
> arrange(filter(ToothGrowth,dose==0.5),len)
    len supp dose
1   4.2   VC  0.5
2   5.2   VC  0.5
3   5.8   VC  0.5
4   6.4   VC  0.5
5   7.0   VC  0.5
6   7.3   VC  0.5
7   8.2   OJ  0.5
8   9.4   OJ  0.5
9   9.7   OJ  0.5
10  9.7   OJ  0.5
11 10.0   VC  0.5
12 10.0   OJ  0.5
13 11.2   VC  0.5
14 11.2   VC  0.5
15 11.5   VC  0.5
16 14.5   OJ  0.5
17 15.2   OJ  0.5
18 16.5   OJ  0.5
19 17.6   OJ  0.5
20 21.5   OJ  0.5
> filtered_toothgrowth <- ToothGrowth %>% 
+   filter(dose==0.5) %>%
+   arrange(len)
>  arrange(len)
Error: object 'len' not found
> filtered_toothgrowth <- ToothGrowth %>% 
+   filter(dose==0.5) %>%
+   arrange(len)
> View(filtered_toothgrowth)
> filtered_toothgrowth <- ToothGrowth %>% 
+   filter(dose==0.5) %>%
+   group_by(supp) %>% 
+   summarize(mean_lean = mean(len,na.rm = T),.group="drop")
> filtered_toothgrowth
# A tibble: 2 × 3
  supp  mean_lean .group
  <fct>     <dbl> <chr> 
1 OJ        13.2  drop  
2 VC         7.98 drop  
> 
