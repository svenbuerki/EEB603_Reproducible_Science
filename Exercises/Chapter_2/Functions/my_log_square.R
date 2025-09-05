###
#Obj.: UDF to infer log and square of a number
###
# - argument (input): base (= one number)
# - output: log (= one number) and a square (= one number) of base in a list
my_log_square <- function(base){
  
  #log (base 10) of base 
  log_value <- log(base)
  #Square of base
  square_value <- base^2
  
  #Return both objects in list
  return(list(log_val = log_value, square_val = square_value))
}
