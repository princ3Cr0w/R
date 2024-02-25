# Ggplot2 visualization of Palmer Penguins
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

-- ggplot code:

>ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

```

![Snip](https://github.com/princ3Cr0w/R/blob/main/Screenshot%202024-02-24%20195144.png)

<sup>Inspecting the plot visualization of the penguins show positive relations or body mass and flipper length; the larger the penguin, the longer the flippers</sup>
