## Week 4 - Food stamp program participation


load(url("https://www.dropbox.com/s/nkinamy11g0wyzp/omsba_5112_food_stamp.RData?raw=1"))

# Install packages
install.packages("tidyverse")
# install.packages("gridExtra")
# install.packages("GGally")

# Bring in library
library(tidyverse)
# library(gridExtra)
# library(GGally)

# Question 1: fsp.rate
# 0.01


# Question 2: unempr
summary(snap$unempr)
# Mean = 5.1%

# Question 3: fsp.rate
summary(snap$fsp.rate)
# Avg = 8.1%

# Question 4: Max prercentage of population on food stamps
# max = 21.7%

# Question 5: Which of the values below best matches your b_1b 1 (slope parameter) result?
slope_para <- lm(fsp.rate ~ unempr, data = snap)
summary(slope_para)
# Slope Parameter = 1.25

# Question 6: Read Results

# Question 7: We want to know what the predicted percent participation in the food stamp 
#             program for a state with 8% unemployment.
(coef(slope_para)["(Intercept)"] + coef(slope_para)["unempr"] * 0.08) * 100

# Question 6: Read Results

