## Create a UDF in R to calculate square of a number 
# - argument: base (= one number)
# - output: square of base (= one number)
square_number <- function(base){
  #Infer square of base and store it in sq
  sq <- base*base
  #Return sq object to user
  return(sq)
}
