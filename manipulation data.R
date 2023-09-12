rm(list=ls()) #clean memory
library(datasets)
data(iris) #import dataset
head(iris) #visualize "head" dataset
tail(iris) #visualize "tail" dataset

summary(iris)
str(iris) # examine the structure of the object

students<-read.table('https://www.dipintothereef.com/uploads/3/7/3/5/37359245/students.txt',header=T, sep="\t", dec='.') # read data set from url
str(students)

students$gender # select colum by using $ 
students[1,] # [row,column] 

students$gender=="female" # condition check whether or not 

f <- students$gender=="female" # filter
females <- students[f,] # selection
females

dim(students) # show how many row and colum
colnames(females)
rownames(females)
rownames(females) <- c('Vanessa', 'Vicky', 'Michelle', 'Joyce', 'Victoria')
# c -> combine


nrow(females) # numer of row
1:nrow(females)
sample(1:nrow(females),2) # select 2 factor in 1:nrow(females)
sf <- sample(1:nrow(females),2)
females[sf,]


order(students$height) # order
ind1 <- order(students$height)
students[order(students$height),]
students[order(-students$height),] # add - means reverse order
students[order(students$height, decreasing = T),]
