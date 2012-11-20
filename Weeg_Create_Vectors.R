# library(matrixStats)
# 0,'MALE',1,'FEMALE',2,'NA') gender 
# decode(mod(rownum,5),0,8,1,9,2,10,3,11,4,12) grade 
# decode(mod(rownum,8),1,'Black/African American' 
#          ,2,'American Indian/Alaska Native' 
#          ,3,'White' 
#          ,4,'Hispanic/Latino' 
#          ,5,'Asian' 
#          ,6,'Native Hawaiian/Other Pacific Islander' 
#          ,7,'Two or more races' 
#          ,0,'Prefer not to respond') ethnicity 
Iterations <- 10000000

Gender <- sample(0:2, Iterations, replace = TRUE)
Grade <- sample(8:12, Iterations, replace = TRUE)
Race <- sample(0:7, Iterations, replace = TRUE)

Gender_1 <- rep.int(1,Iterations)
Grade_10 <- rep.int(10,Iterations)
Race_3 <- rep.int(3, Iterations)

Bmatrix3 <- matrix(Gender, nrow = 1, ncol = length(Gender))
Bmatrix3 <- rbind(Bmatrix3, Grade)
Bmatrix3 <- rbind(Bmatrix3, Race)

Bmatrix4 <- matrix(Gender_1, nrow = 1, ncol = length(Gender_1))
Bmatrix4 <- rbind(Bmatrix4, Grade_10)
Bmatrix4 <- rbind(Bmatrix4, Race_3)

z <- Bmatrix3==Bmatrix4
Moooo <- which(z==TRUE)
length(Moooo)
