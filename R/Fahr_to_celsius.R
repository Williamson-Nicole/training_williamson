airtemps <- c(212, 30.3, 78, 32)

celsius1<- (airtemps[1]-32)*5/9
celsius2<- (airtemps[2]-32)*5/9
celsius3<- (airtemps[3]-32)*5/9

#' Convert temperature data from Fahrenheit to Celsius
#'
#' @param fahr Temperature data in degrees Fahrenheit to be converted
#' @return temperature value in degrees Celsius
#' @keywords conversion
#' @export
#' @examples
#' fahr_to_celsius(32)
#' fahr_to_celsius(c(32, 212, 72))
fahr_to_celsius <- function(fahr){
  celsius <- (fahr -32)*5/9
  return(celsius)
}
#this function only knows how to run on one value at a time
#fahr stands for the name of what you are passing to the function

celsius4 <- fahr_to_celsius(airtemps[1])
celsius1 == celsius4
 #logic check ^ returns TRUE if the function is working

airtemps_c <- fahr_to_celsius(fahr = airtemps)
airtemps_c



#convert from celsius back to fahr

celsius_to_fahr <- function(celsius){
  fahr <- celsius*9/5 + 32
  return(fahr)
}

airtemps_f <- celsius_to_fahr(celsius = airtemps_c)
airtemps_f

airtemps == airtemps_f


