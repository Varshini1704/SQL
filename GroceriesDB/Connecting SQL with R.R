library(RMySQL)
connect = dbConnect( MySQL(),	
			   user='ypur_username',
			   password='your_password',
			   dbname='GroceriesDB',
			   host='localhost',
			   port=3306)
dbListTables(connect)
mydata = dbGetQuery(connect,"select * from Groceries")
mydata

#performing bar chart for the above data
library(dplyr)
mydata$Availability=as.numeric(mydata$Availability)
df=summarise(group_by(mydata,Grocery_Category),Total_availabily=sum(Availability))
df

Grocery_data=data.frame(
  Grocery_Category=c("fruit", "vegetable"),
  Total_availabilly=c(447, 1163))

barplot(Grocery_data$Total_availabilly,col="skyblue",
        main = "Total Availability by Grocery Category",
        ylab = "Total Availability")
