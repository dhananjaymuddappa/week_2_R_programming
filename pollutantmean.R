pollutantmean <- function (directory,pollutant,id=1:332){

	data <- list.files(path = directory,full.names=TRUE)
	dat <- c()
	for(i in 1:332) {
		dat <- rbind(dat, read.csv(data[i]))
	}
	dat2 <- subset(dat, ID %in% id);
	means <- mean(dat2[,pollutant],na.rm=TRUE)
	return(means)
}