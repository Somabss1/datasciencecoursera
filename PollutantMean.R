# My first R function to calculate the mean.
# Coursera - R programming Assignment (Part1)

Pollutantmean <- function (id=1:332, directory, pollutant) {
i <-id[1]
j <-length(id)
z1<-list()
k<-1
d<-numeric(0)
for (i in id) {
 temp <- formatC(i, width=3, flag="0")
 filename = paste(directory, temp, sep = "/")
 filename1 = paste(filename, "csv", sep = ".")
 x<-read.csv(filename1)
 z<-x[pollutant]
 bad<-is.na(z)
 y <-z[!bad]
 z1<-y
 d <-append(d, z1)  
  }
mean(d) 
}


Pollutantmean(70:72, "c:/specdata", "nitrate")
Pollutantmean(1:10, "c:/specdata", "sulfate")

Pollutantmean(23, "c:/specdata", "nitrate")

