# This should create the faster construction of a query matrix
Iterations <- 10000
system.time(Gender_1 <- rep.int(1,Iterations))
length(Gender_1)
# rm(Gender_1)


system.time(Gender_2 <- rep.int(1,Iterations))
length(Gender_2)

system.time(Gender_3 <- rep.int(1,Iterations))
length(Gender_3)

system.time(Gender_4 <- rep.int(1,Iterations))
length(Gender_4)

TestMatrix <- matrix(data = NA, nrow = 4, ncol = length(Gender_1))
TestMatrix[1,] <- Gender_1
TestMatrix[2,] <- Gender_2
TestMatrix[3,] <- Gender_3
TestMatrix[4,] <- Gender_4


# TestMatrix <- matrix(Gender_1, nrow = 1, ncol = length(Gender_1))
# TestMatrix <- rbind(TestMatrix, Gender_2)
# TestMatrix <- rbind(TestMatrix, Gender_3)
# TestMatrix <- rbind(TestMatrix, Gender_4)

