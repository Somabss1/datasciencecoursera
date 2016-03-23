Completecases <- function (id=1:332, directory){
i <-id[1]
j <-length(id)
z1<-numeric(0)
List <- list()
k<-1
for (i in id) {
 temp <- formatC(i, width=3, flag="0")
 filename = paste(directory, temp, sep = "/")
 filename1 = paste(filename, "csv", sep = ".")
 x<-read.csv(filename1)
 y<-x[complete.cases(x$nitrate), ]
 z<-y[complete.cases(x$sulfate), ]
 List[[k]]<-c(id[k],nrow(z))
 k<-k+1
}
m<-c()
m<-do.call(rbind,List)
colnames(m) <-c("id", "nobs")
m
} 


Completecases(3, "c:/specdata")
Completecases(30:25, "c:/specdata")
Completecases(c(2, 4, 8, 10, 12), "c:/specdata")