m1 <- matrix(1:20,nrow=5,ncol=4,byrow=TRUE)
rownames(m1) <- c("R1","R2","R3","R4","R5")
colnames(m1) <- c("C1","C2","C3","C4")
print(m1)

m2 <- matrix(1:9,nrow=3,ncol=3,byrow=FALSE)
rownames(m2) <- c("A","B","C")
colnames(m2) <- c("X","Y","Z")
print(m2)

m3 <- matrix(c(10,20,30,40),nrow=2,byrow=TRUE)
rownames(m3) <- c("Row1","Row2")
colnames(m3) <- c("Col1","Col2")
print(m3)