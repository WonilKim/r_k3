install.packages("tidyverse")
library(tidyverse)

data(mpg)
mpg

filter(mpg, manufacturer=="hyundai")
filter(mpg, manufacturer=="hyundai", cty >= 20)   # 콤마
filter(mpg, manufacturer=="hyundai" | cty >= 20)  # or
filter(mpg, manufacturer=="hyundai" | cty >= 20, year==2008)  # or 후에 콤마

h2008 <- filter(mpg, manufacturer=="hyundai", year==2008)
h2008

slice(h2008, 1)
