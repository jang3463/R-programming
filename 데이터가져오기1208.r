# 데이터 가져오기 (read.table)

#txt 데이터 가져오기
 gradetxt<-read.table('0201.grade.txt',
                      header=FALSE,
                      sep='\t',
                      stringsAsFactors = FALSE,
                      na.string='.')
 View(gradetxt)
 str(gradetxt)
 
#csv 데이터 가져오기
 gradecsv<-read.csv('0202.grade.csv',
                    header=T,
                    na.strings='')
 
 View(gradecsv)
 str(gradecsv)
 
#excel 데이터 가져오기
 
#install.packages('readxl')
library(readxl)
gradexlxs<-read_excel('0203.grade.xlsx',
                      sheet ='grade',
                      col_names = T,
                      na="NA")
str(gradexlxs)
View(gradexlxs)


# 데이터 구조 보기
str(gradexlxs)
dim(gradexlxs) # 행 렬 보여줌 파이썬 shape과 동일
summary(gradexlxs) # 파이썬 describe()과 비슷
summary(gradexlxs$msex)


