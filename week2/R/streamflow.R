#' Streamflow function
#'
#' @param precip in mm
#' @param ET in meters water
#' @param dS 
#'
#' @returns
#' @export
#'
#' @examples
streamflow = function (precip, ET, dS=0) {
  
  if (class(precip)!="numeric") {stop(print("etc etc"))}
  
  Q = precip - ET + dS
  
  if (Q<0) {warning("q is negative")}
  
  return(Q)
  
}