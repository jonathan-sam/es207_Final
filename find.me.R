find.me <- function(x, find, method = "max"){
  if(!is.vector(x[,find], mode = "numeric"))
    stop("Object to be passed must be numeric")
  else if(method == "max"){
    x[which.max(x[,find]),]
  }
  else if(method == "min"){
    x[which.min(x[,find]),]
  }
  else if(method == "median"){
    x[x[,find]==median(x[,find]),]
  }
  else if(method == "mean"){
    ifelse(dim(x[x[,find]==mean(x[,find]),])[1]==0, "There are no exact matches of data with the mean", x[x[,find]==mean(x[,find]),])
  }
}