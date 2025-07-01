## Data-Type Checks
is.character(c("F","M","F","F"))  # TRUE - checks if it's character type
is.factor(as.factor(c("F","M","F","F")))  # TRUE - checks if it's factor type
is.numeric(as.factor(c("F","M","F","F")))  # FALSE - factor isn't numeric

## Matrix Operations
mat1 <- matrix(c(1,2,3,4),
               ncol = 2,
               nrow = 2,
               byrow = TRUE)  # Creates 2x2 matrix filled by row
mat1

is.matrix(mat1)  # TRUE - checks if mat1 is a matrix
is.matrix(c(0,10,2),ncol=3)  # FALSE - vector isn't matrix
is.matrix(c(0,10,2))  # FALSE - vector isn't matrix
mat1[,]  # Returns entire matrix
mat1[1,]  # Returns first row
mat1[,2]  # Returns second column
mat1[1,2] <- 0  # Changes element at row 1, column 2 to 0
mat1

## More Matrix Examples
mat2 <- matrix(c(0, 5, 6, 7), nrow = 2, byrow = TRUE)
mat3 <- matrix(c(9, 8, 1, 3, 5, 7), nrow = 3, byrow = TRUE)

as.vector(mat3[,2])  # Extracts column 2 as vector

# Element-wise operations
mat1 + mat3  # Matrix addition
mat1 - mat3  # Matrix subtraction
mat1 + 10  # Adds 10 to each element
mat3 - 10  # Subtracts 10 from each element

## Data Frame Operations
df1 <- data.frame(id=c(1,2,3,4),
                  age=c(24,24,25,19),
                  gender=c("F","M","F","F"),
                  location=c("rural","urban","rural","urban"),
                  stringsAsFactors = TRUE)
is.data.frame(df1)  # TRUE - checks if it's a data frame
summary(df1)  # Shows summary statistics

# Data type checks
is.character(c("F","M","F","F","F"))  # TRUE
is.factor(as.factor(c("F","M","F","F")))  # TRUE
is.numeric(as.factor(c("F","M","F","F")))  # FALSE

## Data Frame Manipulation
df1 <- data.frame(
  id = c(1, 2, 3, 4),
  age = c(24, 23, 19, 22),
  gender = factor(c("F", "M", "F", "M")),
  location = c("Dhaka", "Rajshahi", "Khulna", "Sylhet")
)

# Column operations
df1$id  # Accesses id column
df1$age  # Accesses age column
df1$gender  # Accesses gender column
# df$height would error - column doesn't exist yet

mean(df1$age, na.rm = TRUE)  # Calculates mean age

# Renaming column
colnames(df1)[colnames(df1) == "age"] <- "age_of_respondent"

# Adding new column
df1$height <- c(5, 6, 5, 5)

## List Operations
ls1 <- list(c(1, 2, 3), c(24, 23, 19), c("F", "M", "F"))  # Simple list
ls2 <- list(id = c(1, 2, 3), age = c(24, 23, 19), df = df1)  # Named list
ls3 <- list(id = c(1, 2, 3), age = c(24, 23, 19), df = df1, array1 = arr1)  # Complex list

# Accessing list elements
ls1[[1]][1]  # First element of first component
is.data.frame(ls2)  # FALSE - ls2 is a list, not data frame

## Control Structures
# If-else example
x <- 5
if (x > 0) {
  print("x is greater than 0")
  if(x >= 1 & x <= 10) {
    print("Yes the digit is between 1 and 10")
  }
  if(x %% 5 == 0) {  # Fixed condition to check divisibility
    print("x is divisible by 5")
  } else {
    print("x is not divisible by 6")
  }
} else if(x >= 1 & x <= 3) {
  print("x is between 1 to 3")
} else {
  print("x is not greater than 0")
}

# Vectorized ifelse
x <- c(1, 3, 0, 5, 99)
ifelse(x > 90, "Yes", "No")  # Simple condition
ifelse(x > 90, "Yes", ifelse(x == 0, "zero", "No"))  # Nested condition

# Switch statement
operation <- "root"
val <- 9
switch(operation,
       "square" = val^2,
       "root" = sqrt(val),
       "Invalid operation"
)

## Loops
# For loop
nums <- c(1,2,3,4,5)
for(i in nums) {
  print(paste("square of", i, "is", i^2))
}

# While loop
countIs <- 6
while(countIs > 0) {
  print(countIs)
  countIs <- countIs - 1
}

# Repeat loop
i <- 1
cummunative_sum <- 0  # Fixed variable name
repeat {
  cummunative_sum <- cummunative_sum + 1
  print(cummunative_sum)
  i <- i + 1
  if (cummunative_sum > 20) {
    break
  }
}

## Apply Functions
matrix__1 <- matrix(1:9, nrow = 3, byrow = TRUE)
apply(matrix__1, 1, sum)  # Row sums
apply(matrix__1, 2, sum)  # Column sums
colSums(matrix__1)  # Alternative column sum

# tapply example
df <- data.frame(
  age = c(22,20,NA,24,19,23),
  gender = c("M","F","F","M","M","F"),
  location = c("Rural","Urban","Urban","Rural","Rural","Rural"),
  stringsAsFactors = TRUE
)
tapply(X = df$age, INDEX = df$gender, FUN = mean, na.rm = TRUE)  # Fixed parameters
tapply(X = df$age, INDEX = list(df$gender, df$location), FUN = mean)  # Two-way table

# lapply example
ls3 <- list(
  id = c(1,2,3),
  age = c(24,23,19),
  df = df1
)
lapply(ls3, is.data.frame)  # Checks which components are data frames