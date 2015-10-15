complete <- function (directory,id=1:332){
	data <- list.files(path = directory,full.names=TRUE)
	dat <- c()	
	j <- 1
	complete_data <- rep(0,length(id))
	for (i in id) {
		dat <- read.csv(data[i])
		dat_without_na <- na.omit(dat)
		complete_data[j] <- nrow(dat_without_na)
		j<-j+1
	}
	result <- data.frame(id=id,nobs=complete_data)
	return(result)
}