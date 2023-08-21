##
# Source UDFs
##
## Create list of R scripts containing UDFs in Functions/
ToSource <- list.files(path = "Functions", pattern = ".R", full.names = T)
#Source all files in ToSource
sapply(ToSource, source)

# Apply square_number on a value
square_number(base = 2)

# Apply square_number to a vector
vecbase <- c(2,4,16,23)
square_number(base = vecbase)


##
#Lists
##

# Create a list containing strings, numbers, vector and a logical value
list_data <- list("Red", 51.3, 72, c(21,32,11), TRUE)

print(list_data)

# Naming elements of list_data
# Create a new list with a vector, a matrix and a list
list_data <- list(c("Jan", "Feb", "Mar"), matrix(c(3,9,5,1,-2,8), nrow = 2), list("green", 12.3))

#Give names to elements
names(list_data) <- c("1st_Quarter", "A_matrix", "An_inner_list")

#Print/echo list_data
print(list_data)

#Access elements of the list
# Using double indexing
list_data[[1]]

# Using `$`
list_data$A_matrix


#Cal function
out <- my_log_square(base = 2)


#Apply exp_number
exp_number(base = 2, power = 4)

exp_number(base = "hello", power = 4)









