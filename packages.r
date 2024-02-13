```r
> installed.packages("tidyverse")
     Package LibPath Version Priority Depends Imports LinkingTo
     Suggests Enhances License License_is_FOSS License_restricts_use
     OS_type Archs MD5sum NeedsCompilation Built

-- when succesfully installed, install library("tidyverse")

> library("tidyverse")
── Attaching core tidyverse packages ─────────────── tidyverse 2.0.0 ──
✔ dplyr     1.1.4     ✔ readr     2.1.5
✔ forcats   1.0.0     ✔ stringr   1.5.1
✔ ggplot2   3.4.4     ✔ tibble    3.2.1
✔ lubridate 1.9.3     ✔ tidyr     1.3.1
✔ purrr     1.0.2     
── Conflicts ───────────────────────────────── tidyverse_conflicts() ──
✖ dplyr::filter() masks stats::filter()
✖ dplyr::lag()    masks stats::lag()
ℹ Use the conflicted package to force all conflicts to become errors

-- browseVignettes commands:

> browseVignettes("tidyverse")
> browseVignettes("ggplot2")
