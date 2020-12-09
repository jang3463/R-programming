#ch03.기술통계분석(범주형)
##데이터 가져오기

freq <- read.csv('0301.frequency.csv',
                 na.strings='.')

str(freq)

freq$grade <- factor(freq$grade,
                     levels = c(1:5),
                     labels = c('F','D','C','B','A'))

str(freq)
View(freq)

# 도수분포표 만들기

# attach(시작) ~ detach(끝): 데이터프레임 활성화

attach(freq)
#table을 이용한 빈도수 확인
#grade.n <- table(freq$grade)  attach 없을때

grade.n <- table(grade)
grade.n

#상대빈도(%)
grade.p <- prop.table(grade.n)
grade.p

#빈도 + 상대빈도
grade.t <- cbind(grade.n, grade.p)
grade.t


#빈도 + 상대빈도 + 합계
#margin=1 : 행 백분율
#margin=2 : 열 백분율
#margin=NULL : 전체 백분율
grade.a <- addmargins(grade.t,margin = 1)
grade.a

detach(freq)



















