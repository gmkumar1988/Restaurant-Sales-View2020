file.choose()



raw_restaurant_top_250 = read.csv("D://Datasetssss//restaurant_sales_2020//Top250.csv", header = TRUE)

head(raw_restaurant_top_250)
str(raw_restaurant_top_250)
View(raw_restaurant_top_250)

x = restaurant_sales = raw_restaurant_top_250$Sales
y = restuarant_sales = raw_restaurant_top_250$YOY_Sales
z = restuarnat_units = raw_restaurant_top_250$YOY_Units
a = restaurant_point = raw_restaurant_top_250$Restaurant

restaurant_data_frame = data.frame(x,y,z,a)

summary(restaurant_data_frame)
str(restaurant_data_frame)


###Convert Character Percentage values to Numeric Value using tidyverse package:
install.packages("tidyverse")
library(tidyverse)
y = parse_number(y)
z = parse_number(z)


head(restaurant_data_frame)

###Installation Packages plot3D Plot:
install.packages("plot3D")
library(plot3D)


###Functions will be used for plotting different graphs: 
###scatter3D(x, y, z, ..., colvar = z, col = NULL, add = FALSE)
###text3D(x, y, z, labels, colvar = NULL, add = FALSE)
###points3D(x, y, z, ...)
###lines3D(x, y, z, ...)
###scatter2D(x, y, colvar = NULL, col = NULL, add = FALSE)
###text2D(x, y, labels, colvar = NULL, col = NULL, add = FALSE)

scatter3D(x, y, z, clab = c("Sales", "Values (Percentage) View 1"))

scatter3D(x, y, z, colvar = NULL, col = "blue",
          pch = 19, cex = 0.5)

par(mfrow = c(2,3))

# full box
scatter3D(x, y, z, bty = "f", colkey = FALSE, main ="bty= 'f'")
# back panels and grid lines are visible
scatter3D(x, y, z, bty = "b2", clab = c("Sales", "Values (Percentage)"),
          colkey = TRUE, main ="2020 Restaurant YOY Sales Values View 1", 
          xlab = "Number of Sales", ylab = "YOY Sales Details ", zlab = "YOY Units" )

scatter3D(x, y, z, pch = 18, bty = "u", colkey = TRUE, 
          main ="2020 Restaurant YOY Sales Values View 2", col.panel ="steelblue", expand =0.4, 
          col.grid = "darkblue", clab = c("Sales", "Values (Percentage)"),
          xlab = "Number of Sales", ylab = "YOY Sales Details ", zlab = "YOY Units")

scatter3D(x, y, z, bty = "g", pch = 18, colkey = TRUE,main ="2020 Restaurant YOY Sales Values View 3")
          col = ramp.col(c("blue", "yellow", "red"), clab = c("Sales", "Values (Percentage)"),
                         xlab = "Number of Sales", ylab = "YOY Sales Details ", zlab = "YOY Units")
          
###Changing the colors by graph:
scatter3D(x,y,z, pch = 18, bty = "g", col = c("#1B9E77", "#D95F02", "#7570B3"),
          pch = 18, ticktype = "detailed",
          colkey = list(at = c(2, 3, 4), side = 1, 
                        addlines = TRUE, length = 0.5, width = 0.5, main ="2020 Restaurant YOY Sales Values View 4",
                        labels = c("mcdonanld", "starbucks", "burgerking")),
          xlab = "Number of Sales", ylab = "YOY Sales Details ", zlab = "YOY Units")


with(restaurant_data_frame, text3D(restaurant_data_frame$x, restaurant_data_frame$y, restaurant_data_frame$z, 
                       labels = rownames(restaurant_data_frame),  
                       col = gg.col(100), theta = 60, phi = 20,
                       xlab = "Number of Sales", ylab = "YOY Sales Details", zlab = "YOY Units", 
                       main = "2020 Restaurant YOY Sales Values View 5", cex = 0.6, 
                       bty = "g", ticktype = "detailed", d = 2,
                       clab = c("Sales", "Values (Percentage)"), adj = 0.5, font = 2))

with(restaurant_data_frame, text2D(x = restaurant_data_frame$x, y = restaurant_data_frame$y + 5, 
                                   xlab = "Number of Sales", ylab = "YOY Sales Percentage", 
                                   colvar =    restaurant_data_frame$z,   labels = restaurant_data_frame$a,                            
                                   clab = c("Sales", "Values (Percentage)"),
                                   main = "2020 Restaurant YOY Sales Values View 6",
                                   cex = 0.6, adj = 0.5, font = 2))

data("USArrests")

rownames(USArrests)

str(USArrests)

str(restaurant_data_frame)

