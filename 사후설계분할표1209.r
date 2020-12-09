#사후설계분할표

post <- read.csv('0303.post.csv',
                 header = T,
                 na.strings = '.')
str(post)
View(post)

post$smoking <- factor(post$smoking,
                       levels = c(1,2),
                       labels = c('smok','nsmok'))

post$cancer <- factor(post$cancer,
                      levels =  c(1,2),
                      labels =  c('cancer','nocancer'))


attach(post)

#2차 가공 데이터
post.n <- xtabs(observation ~ cancer + smoking, data=post)
post.n

#교차분석용 라이브러리 이용
install.packages('gmodels')
library(gmodels)
CrossTable(post.n)


detach(post)