---
title: "Palmer Penguins"
author: "Marc N"
date: "2024-03-07"
output: html_document
---
## Setting up my environment:
 Note: Seting up my R environment by installing "Palmer Penguins" and "Tidyverse" packages

```{r loading packages}
library(tidyverse)
library(palmerpenguins)
```

## Visualizations

```{r}
penguins %>%
  drop_na(sex) %>%
  ggplot(aes(x=flipper_length_mm,y=body_mass_g)) +
  geom_point(aes(color=species),
             shape=species) +
  facet_wrap(~sex)
  ```
```r
glimpse(penguins)
```
```r
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(color="purple")

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(aes(shape=species))

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(aes(color=species,
                 shape=species)) +
  facet_wrap(~sex)
```
```r
penguins %>%
  drop_na(sex) %>%
  ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(aes(color=species,
                 shape=species)) +
  facet_wrap(~sex)
```
