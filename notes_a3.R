library(tidyverse)
library(here)
library(ggpubr) # for some graphic applications that extend ggplot2
library(janitor)
# install.packages("lsr")
library(lsr)
library(effsize)
library(dplyr)
# install.packages("qqplotr")
library(qqplotr)
library(ggplot2)
# install.packages("DescTools")
library(DescTools)

# San Antonio River gobies in centimeters  
# data input: creating a vector of data
san_ant_gobies <- c(2.7, 3.2, 3.2, 3.3, 3.5, 3.6, 3.6, 3.7, 4.0, 4.3)

summary(san_ant_gobies)

san_ant_gobies_one_t <- t.test(san_ant_gobies, mu=4.2)
san_ant_gobies_one_t

# qqplot for san antonio river gobies
goby_df<-data.frame(data=san_ant_gobies)

qqplot_san_ant_gobies <- ggplot(data=goby_df, aes(sample = data)) + geom_qq() + stat_qq_line()+theme_bw()

# labs(title = "San Antonio River Gobies") +
qqplot_san_ant_gobies