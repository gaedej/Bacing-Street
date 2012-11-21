Iterations <- 100

Gender <- sample(0:2, Iterations, replace = TRUE)
Grade <- sample(8:12, Iterations, replace = TRUE)
Race <- sample(0:7, Iterations, replace = TRUE)
District <- sample(0:50, Iterations, replace = TRUE)

Gender_1 <- rep.int(1,Iterations)
Grade_10 <- rep.int(10,Iterations)
Race_3 <- rep.int(3, Iterations)
District_1000 <- rep.int(10, Iterations)

Bmatrix3 <- matrix(Gender, nrow = 1, ncol = length(Gender))
Bmatrix3 <- rbind(Bmatrix3, Grade)
Bmatrix3 <- rbind(Bmatrix3, Race)
Bmatrix3 <- rbind(Bmatrix3, District)

Bmatrix4 <- matrix(Gender_1, nrow = 1, ncol = length(Gender_1))
Bmatrix4 <- rbind(Bmatrix4, Grade_10)
Bmatrix4 <- rbind(Bmatrix4, Race_3)
Bmatrix4 <- rbind(Bmatrix4, District_1000)

z <- Bmatrix3==Bmatrix4
zSum <- colSums(z)
which(zSum==4)
Number_of_Trues <- which(z==TRUE)
length(Number_of_Trues)