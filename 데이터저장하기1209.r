gradecsv <- read.csv('0202.grade.csv',
                     na.strings = '')

gradecsv$csex <- factor(gradecsv$csex,
                      levels=c(1,2),
                      labels=c('남자','여자'))


str(gradecsv)

#데이터 내보내기

write.csv(gradecsv,
          file='gradecsv.csv',
          row.names=F,
          na="")

#R데이터로 저장
save(gradecsv, file='grade.RDate')

load('grade.RDate')
