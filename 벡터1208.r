#스칼라

c(1)


# 백터
num <- c(1,2,3,4)
numT <- t(num)
View(num)
View(numT)

View(num%*%numT)
numT%*%num


m <- 1:12

mtx <- matrix(m,nrow=4)

arr <- array(m,c(2,3,2))
arr


mtx[3,2]

#데이터프레임

var1 <- c(1,2,3,4)
var2 <- factor(c("M","F","F","M"))
df = data.frame(id = var1, sex =var2)
View(df)
str(df)


# 리스트

v1 <- c(1,2,3,4)
v2 = matrix(1:12, nrow=4)
v3 <- array(1:12, c(2,3,2))
v4 <- data.frame(id=c(1,2,3,4),sex=factor(c("M","F","M","F")))
lt <- list(v1,v2,v3,v4)
lt




