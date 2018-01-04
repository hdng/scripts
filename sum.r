#!/usr/bin/r -i

x <- as.numeric(readLines())
cat('SUM = ', sum(x), '\n')
print(summary(x))
print(stem(x))

