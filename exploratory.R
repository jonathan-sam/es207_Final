exploratory <- function(x, y, method = "Histograms", Time = NULL, Time.type = NULL, cor.m = "pearson"){
  
  y <- x[,y]
  z <- length(y)
  if(is.null(names(y))) warning("No variable names defined")
  q <- c(names(y))
  time <- x[,Time]
  
  if(method == "Histograms"){
    lapply(q, FUN=function(s)
      hist(y[, s], main=paste("Histogram of", s), xlab = ""))
  }
  else if(method == "Time"){
    if(is.null(time)) stop("You must indicate which column contains your time data")
    lapply(q, FUN = function(s)
      plot(time, y[,s], main=paste(Time.type, s, sep = "."), ylab = "*units"))
  }
  else if(method == "Correlation"){
    cor(y, method = cor.m)
  }
}