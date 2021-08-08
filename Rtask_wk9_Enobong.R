library(ggplot2)

data(package = "ggplot2")

#Scatter plot with qplot

ggplot2::txhousing

?txhousing

#Plot of sales across the different months using scatter graph
qplot(data = txhousing, x = month, y = sales, geom = "point", color = listings)
#The graph above shows the distribution of the sales across the different months. 
#The highest amount of sales occurs in the middle month of the year.
#Additionally, the graph shows that higher sales have higher active listings.

#Plot of sales across the different months using bar graph

qplot(data = txhousing, x = sales, geom = "bar", fill = listings)
#The bar graph shows that the highest number of sales occurs with sales lower than 2500.

#Plot of median sale price using a histogram.
qplot(data = txhousing, x = median, geom = "histogram", fill = listings)
#The histogram shows that the distribution of the median sale price is skewed to the left, 


#ADDITIONAL TASK
#Task 1
#create three vectors a, b, c with 5 integers.
a<-c(1,2,3,4,5)
b<-c(2,4,6,8,0)
c<-c(5,10,15,20,25)

# Combine the three vectors to become a 3×5 matrix
m<-cbind(a,b,c)
print("Content of the said matrix:")
print(m)

matplot(m, type ="b", pch=4, col=1:3,
        main = "My Matrix", col.main="red", cex.main=3,
        ylab= "Columns", col.lab="blue",
        xlab = "Rows",cex.lab=1.5)

#Task 2
#Write a R program to create a Data frames which contain 
#details of 5 employees and display the details. (Name, age, Role and Length of service).

name <- c("Enobong", "Nsima", "James", "Riola", "Mary")
age <- c(25,35,56,24,25)
role <- c("Analyst", "Engineer", "Accountant", "Media host", "Medical supervisor")
lengthofservice <- c(2,4,10,6,5)

frame <- data.frame(name, age, role, lengthofservice) 
frame

#Task 3
#Import the GGPLOT 2 library and plot a graph using the qplot
#function. X axis is the sequence of 1:20 and the y axis is the x ^ 2. 
#Label the graph appropriately. install.packages("ggplot2",dependencies = TRUE)
dev.off()

x <- seq(1:20)
qplot(X, X^2, geom = "line", col = "blue",
      main = "Relationship between x and x2",
      ylab= "X²")

#Task 4
#Create a simple bar plot of five subjects

Subjects <- c("Mathematics", " English", "Chemistry", "Business studies", "Physics")
Average_grade <- c( 80.5, 70.4, 60, 79.2, 70.2)

barplot(Average_grade,names.arg=Subjects,
        main="Subject Intake",
        xlab= "Subjects",
        ylab="Average_grade",
        col = "green")

#Task 5
#Write a R program to take input from the user (name and age) and display the values.

name <- readline("What is your name: ")
age <- readline("How old are you:")
introduction <- paste (name, "is", age, "years old")
print(introduction)

# Task 6. 
#Write a R program to create a sequence of numbers from 20 
#to 50 and find the mean of numbers from 20 to 50 and sum of numbers.

mysequence <- seq(20:50)
mean(mysequence)
sum(mysequence)

#Task 7
# Write a R program to create a vector which contains 10  random integer values between -50 and +50

my_vector = sample(-50:50, 10, replace = TRUE)
print(my_vector)

