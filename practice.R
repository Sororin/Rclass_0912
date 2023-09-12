iris$Species
s <- iris$Species=="setosa"
ve <- iris$Species=="versicolor"
vi <- iris$Species=="virginica"

setosa <- iris[s,]
versicolor <- iris[ve,]
virginica <- iris[vi,]
