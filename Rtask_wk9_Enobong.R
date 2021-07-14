> library(ggplot2)

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