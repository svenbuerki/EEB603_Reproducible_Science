# Obj: Define a power function (exp_number): y = x^n
# - Arguments: base (= x) and power (= n)
# - Output: exp (= y) 
# x, n and y are numbers
exp_number <- function(base, power){
  # Test whether base or (|) power is not a number.
  # is.numeric() is used rather than class(x) != "numeric": class(2L) is
  # "integer", so the old test wrongly rejected whole numbers, and class() can
  # return two values (a matrix gives c("matrix","array")), which makes if()
  # fail with "the condition has length > 1".
  if(!is.numeric(base) | !is.numeric(power)){
    # call. = FALSE drops R's "Error in exp_number(...)" prefix, so the user
    # sees only the message we wrote
    stop("Both base and power inputs must be numeric", call. = FALSE)
  }
  
  #Infer exp (= y) based on base and power
  exp <- base^power
  
  #Return exp
  return(exp)
}