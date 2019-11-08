#Analysis script


# read data
#apples <- data.frame(apple_id = as.factor(1:1000),
#                     weight = rnorm(1000, 5, 1))
#write.csv(apples, 'data/apples_data.csv', row.names = FALSE)

apples <- read.csv('data/apples_data.csv')

#process data

#Load R scripts
R.utils::sourceDirectory('R/')
#this could be where you store important code or source scripts

apples$log_weight <- log(apples$weight)

#graphing
library(ggplot2)
#pdf('figs/hist_apple_weight.pdf')
hist(apples$weight)
dev.off()

png('figs/hist_apple_weight.png')
ggplot2::ggplot(apples, aes(weight)) + geom_histogram()
# hist(apples$weight)
dev.off()




