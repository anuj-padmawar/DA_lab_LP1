library(iris.csv)

read.csv("/home/anuj/Desktop/iris.csv")
data("iris")
names(iris)

[1] "Sepal.Length" "Sepal.Width"  "Petal.Length" "Petal.Width"  "Species"     


dim(iris)

[1] 150   5

View(iris)
str(iris)

'data.frame':	150 obs. of  5 variables:
  $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
$ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
$ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
$ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
$ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...


min(iris$Sepal.Length)

[1] 4.3


max(iris$Sepal.Length)

[1] 7.9


mean(iris$Sepal.Length)

[1] 5.843333


range(iris$Sepal.Length)

[1] 4.3 7.9


sd(iris$Sepal.Length)

[1] 0.8280661


/*Variance measures how far a set of data is spread out. A variance of zero indicates that all of the data values are identical. ... A high variance indicates that the data points are very spread out from the mean, and from one another. Variance is the average of the squared distances from each point to the mean.*/
  
 var(iris$Sepal.Length)

[1] 0.6856935


summary(iris)
Sepal.Length    Sepal.Width     Petal.Length    Petal.Width          Species  
Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100   setosa    :50  
1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300   versicolor:50  
Median :5.800   Median :3.000   Median :4.350   Median :1.300   virginica :50  
Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199                  
3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800                  
Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  


summary(iris$Sepal.Length)

Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
4.300   5.100   5.800   5.843   6.400   7.900 


/*A quantile, or percentile, tells you how much of your data lies below a certain value. The 50 percent quantile, for example, is the same as the median. */
  
  quantile(iris$Sepal.Length)

0%  25%  50%  75% 100% 
4.3  5.1  5.8  6.4  7.9 



quantile(iris$Sepal.Length,c(0.3, 0.6))

30%  60% 
  5.27 6.10 





 hist(iris$Petal.Length)



h<-hist(iris$Sepal.Length,main= "sepal length frequency- histogram", xlab="sepal length", xlim=c(3.5,8.5), col="blue",border = "red",breaks =5)

boxplot(iris$Sepal.Length)


boxplot(iris[,-5])

 myboxplot<-boxplot(iris[,-5])



// Return subsets of vectors, matrices or data frames which meet conditions.
irisVer <- subset(iris, Species == "versicolor")
 irisSet <- subset(iris, Species == "setosa")
 irisVir <- subset(iris, Species == "virginica")


//We can put multiple graphs in a single plot by setting some graphical parameters with the help of par() function. Graphical parameter mfrow can be used to specify the number of subplot we need.It takes in a vector of form c(m, n) which divides the given plot into m*n array of subplots. 
mar is used to set the coordinates  in a normalized form as c(x1, x2, y1, y2)

 par(mfrow=c(1,4),mar=c(6,3,2,1))


 boxplot(irisVer[,1:4], main="Versicolor",ylim = c(0,8),las=2)

 boxplot(irisSet[,1:4], main="Setosa",ylim = c(0,8),las=2)

 boxplot(irisVir[,1:4], main="Virginica",ylim = c(0,8),las=2)


