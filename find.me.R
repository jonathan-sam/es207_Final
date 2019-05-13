find.me <- function(x, find, method = "max"){
  if(method == "max"){
    x[which.max(x[,find]),]
  }
  else if(method == "min"){
    x[which.min(x[,find]),]
  }
  else if(method == "median"){
    x[x[,find]==median(x[,find]),]
  }
  else if(method == "mean"){
    ifelse(dim(x[x[,find]==median(x[,find]),])[1]==0, x[x[,find]==median(x[,find]),], "There are no exact matches of data with the mean")
  }
}