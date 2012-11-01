# Attempt to create a function for the BACing algorithm by Nick Street
DesktopKDDbacingSet <- read.csv("~/R/Bacing/DesktopKDDbacingSet.csv")
n <- nrow(DesktopKDDbacingSet)
delta <- 1/n
m <- 0
gamma <- 0
# T is training set 'n is the size of the training set
# l learner
# k number of training rounds

for(i in 1:n){
x <- DesktopKDDbacingSet[i,1]
z <- DesktopKDDbacingSet[i,ncol(DesktopKDDbacingSet)]
cat(x, z, delta, "\n")
}
# End of Code (jmg).
