# This should create the faster construction of a query matrix
Iterations <- 1000000
system.time(Gender_1 <- rep.int(1,Iterations))
system.time(Gender_1 <- rep(Gender_1, 4))
length(Gender_1)