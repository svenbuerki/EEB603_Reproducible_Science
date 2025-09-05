# Obj: Define a power function (exp_number): y = x^n
# - Arguments: base (= x) and power (= n)
# - Output: exp (= y) 
# x, n and y are numbers
exp_number <- function(base, power){
  #Test if base or (|) power are different than numeric
  if(class(base) != "numeric" | class(power) != "numeric"){
    #If not numeric then stop and print error
    stop("Both base and power MUST be numeric!")
  }
  
  #Infer exp (= y) based on base and power
  exp <- base^power
  
  #Return exp
  return(exp)
}