#factor (질적(범주형)변수처리)

gradetxt<-read.table('0201.grade.txt',
                     header=FALSE,
                     sep='\t',
                     stringsAsFactors = FALSE,
                     na.string='.')
str(gradetxt)

gradetxt$v3 <- factor(gradetxt$V3,
                      levels=c(1,2),
                      labels=c('남자','여자'))
str(gradetxt$v3)
table(gradetxt$V3)

plot(x=gradetxt$v3,y=gradetxt$v4)
