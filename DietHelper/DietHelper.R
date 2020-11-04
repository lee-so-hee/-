install.packages("rJava")
install.packages("memoise")
install.packages("KoNLP")
install.packages("memoise")
install.packages("XML")
install.packages("RCurl")

library(rJava)
library(RCurl)
library(XML)
library(memoise)
library(KoNLP)


# 블로그 검색 API
searchUrl <- "https://openapi.naver.com/v1/search/news.xml"

# 클라이언트 ID와 시크릿
Client_ID <- "WAlWiaW_shF7og1PEq85"
Client_Secret <- "9EyYQCfaMv"

# 검색어
query <- URLencode(iconv("다이어트성분부작용","euc-kr","UTF-8"))
url <- paste(searchUrl, "?query=", query, "&display=100", sep="")

doc <- getURL(url,
              httpheader = c('Content-Type' = "application/xml",
                             'X-Naver-Client-Id' = Client_ID,
                             'X-Naver-Client-Secret' = Client_Secret))

# 블로그 내용에 대한 리스트 만들기  
doc2 <- htmlParse(doc, encoding="UTF-8")
text <- xpathSApply(doc2, "//item/description", xmlValue)
text

install.packages("KoNLP")
install.packages("RColorBrewer")
install.packages("wordcloud")

library(KoNLP)
library(RColorBrewer)  
library(wordcloud)

useSejongDic()
useNIADic()

noun <- sapply(text, extractNoun, USE.NAMES=F)
noun  

noun2 <- unlist(noun) 
noun2

noun2 <- Filter(function(x){nchar(x) >= 2}, noun2)
noun2 

noun2 <- gsub('\\d+', '', noun2)
noun2 <- gsub('<b>', '', noun2)
noun2 <- gsub('</b>', '', noun2)
noun2 <- gsub('&amp', '', noun2)
noun2 <- gsub('&lt', '', noun2)
noun2 <- gsub('&gt', '', noun2)
noun2 <- gsub('&quot;', '', noun2)
noun2 <- gsub('"', '', noun2)
noun2 <- gsub('\'', '', noun2)
noun2 <- gsub(' ', '', noun2)
noun2 <- gsub('-', '', noun2)

noun2 <- gsub('다이어트', '', noun2)
noun2 <- gsub('올리브영', '', noun2)
noun2 <- gsub('효과', '', noun2)
noun2 <- gsub('확실', '', noun2)
noun2 <- gsub('분홍', '', noun2)
noun2 <- gsub('초록', '', noun2)
noun2 <- gsub('감소', '', noun2)
noun2 <- gsub('체중', '', noun2)
noun2 <- gsub('오늘', '', noun2)
noun2 <- gsub('보조제', '', noun2)
noun2 <- gsub('하루', '', noun2)
noun2 <- gsub('식전', '', noun2)
noun2 <- gsub('유통기한', '', noun2)
noun2 <- gsub('유명', '', noun2)
noun2 <- gsub('추천', '', noun2)
noun2 <- gsub('선택', '', noun2)
noun2 <- gsub('^ㅋ^ㅋ^ㅋ^ㅋ', '', noun2)
noun2 <- gsub('섭취', '', noun2)
noun2 <- gsub('노력', '', noun2)
noun2 <- gsub('제품', '', noun2)
noun2 <- gsub('몸매', '', noun2)
noun2 <- gsub('안전', '', noun2)
noun2 <- gsub('지방이', '', noun2)
noun2 <- gsub('^ㅋ^ㅋ^ㅋ', '', noun2)
noun2 <- gsub('GRN', '', noun2)
noun2 <- gsub('핑크', '', noun2)
noun2 <- gsub('가격', '', noun2)
noun2 <- gsub('저렴', '', noun2)
noun2 <- gsub('휴대', '', noun2)
noun2 <- gsub('파우치', '', noun2)
noun2 <- gsub('감량', '', noun2)
noun2 <- gsub('비교', '', noun2)
noun2 <- gsub('인기', '', noun2)
noun2 <- gsub('를', '', noun2)
noun2 <- gsub('빠른', '', noun2)
noun2 <- gsub('SNS', '', noun2)
noun2 <- gsub('한번쯤', '', noun2)
noun2 <- gsub('누구', '', noun2)
noun2 <- gsub('식후', '', noun2)
noun2 <- gsub('도움', '', noun2)
noun2 <- gsub('무엇', '', noun2)
noun2 <- gsub('소문', '', noun2)
noun2 <- gsub('체험', '', noun2)
noun2 <- gsub('입버릇', '', noun2)
noun2 <- gsub('리뉴얼', '', noun2)
noun2 <- gsub('록이', '', noun2)
noun2 <- gsub('이초', '', noun2)
noun2 <- gsub('간단', '', noun2)
noun2 <- gsub('말그', '', noun2)
noun2 <- gsub('시니', '가르시니아', noun2)
noun2 <- gsub('가르', '', noun2)
noun2 <- gsub('엄마', '', noun2)
noun2 <- gsub('최고', '', noun2)
noun2 <- gsub('^ㅋ^ㅋ^ㅋ', '', noun2)
noun2 <- gsub('기분', '', noun2)
noun2 <- gsub('기능', '', noun2)
noun2 <- gsub('건강', '', noun2)
noun2 <- gsub('식품', '', noun2)
noun2 <- gsub('뭔가', '', noun2)
noun2 <- gsub('^ㅋ^ㅋ^ㅋ..', '', noun2)
noun2 <- gsub('^ㅋ^ㅋ^ㅋ^ㅋ^ㅋ', '', noun2)
noun2 <- gsub('^ㅋ.^ㅋ', '', noun2)
noun2 <- gsub('병행', '', noun2)
noun2 <- gsub('!', '', noun2)
noun2 <- gsub('패키지', '', noun2)
noun2 <- gsub('챙겨먹어줬는데요^ㅎ^ㅎ', '', noun2)
noun2 <- gsub('포씩은', '', noun2)
noun2 <- gsub('가방', '', noun2)
noun2 <- gsub('필요', '', noun2)
noun2 <- gsub('뭔가', '', noun2)
noun2 <- gsub('부족', '', noun2)
noun2 <- gsub('무리', '', noun2)
noun2 <- gsub('콜라핏', '', noun2)
noun2 <- gsub('덕분', '', noun2)
noun2 <- gsub('높혀', '', noun2)
noun2 <- gsub('업그레이드', '', noun2)
noun2 <- gsub('마찬가지', '', noun2)
noun2 <- gsub('중요', '', noun2)
noun2 <- gsub('입소문', '', noun2)
noun2 <- gsub('학생', '', noun2)
noun2 <- gsub('극단적', '', noun2)
noun2 <- gsub('하게되면.', '', noun2)
noun2 <- gsub('질렀는데욤', '', noun2)
noun2 <- gsub('^ㅎ^ㅎ', '', noun2)
noun2 <- gsub('그거', '', noun2)
noun2 <- gsub('진짜', '', noun2)
noun2 <- gsub('정도', '', noun2)
noun2 <- gsub('색상', '', noun2)
noun2 <- gsub('^ㅋ^ㅋ^ㅋ..', '', noun2)
noun2 <- gsub('책임져주는^ㅋ^ㅋ^ㅋ^ㅋ^ㅋ', '', noun2)
noun2 <- gsub('B,B,B', '', noun2)
noun2 <- gsub('복용', '', noun2)
noun2 <- gsub('성분이', '', noun2)
noun2 <- gsub('이죠', '', noun2)
noun2 <- gsub('각종', '', noun2)
noun2 <- gsub('결과', '', noun2)
noun2 <- gsub('확인', '', noun2)
noun2 <- gsub('한데', '', noun2)
noun2 <- gsub('연구', '', noun2)
noun2 <- gsub('논문', '', noun2)
noun2 <- gsub('남편', ' ', noun2)
noun2 <- gsub('기능성', ' ', noun2)
noun2 <- gsub('소지섭', '', noun2)
noun2 <- gsub('드라마', '', noun2)
noun2 <- gsub('로', '', noun2)
noun2 <- gsub('지방을', '', noun2)
noun2 <- gsub('웨이', '웨이트', noun2)
noun2 <- gsub('알룬정', '', noun2)
noun2 <- gsub('임수향', '', noun2)
noun2 <- gsub('알룬정은', '', noun2)
noun2 <- gsub('알룬은', '', noun2)
noun2 <- gsub('주상욱', '', noun2)
noun2 <- gsub('알룬정을', '', noun2)
noun2 <- gsub('알룬정이', '', noun2)
noun2 <- gsub('[알룬정]', '', noun2)
noun2 <- gsub('알룬', '', noun2)
noun2 <- gsub(',알룬정', '', noun2)
noun2 <- gsub('알룬정..', '', noun2)
noun2 <- gsub('‘알룬정’', '', noun2)
noun2 <- gsub('니시아', '가르니시아', noun2)
noun2 <- gsub('슬리미s', '', noun2)
noun2 <- gsub('캄보지아', '', noun2)
noun2 <- gsub('인자”라며', '', noun2)
noun2 <- gsub('“부작용', '부작용', noun2)
noun2 <- gsub('대학교', '', noun2)
noun2 <- gsub('에', '', noun2)
noun2 <- gsub('부작', '부작용', noun2)

noun2

#워드클라우드 만들기
wordcount <- table(noun2)
head(sort(wordcount, decreasing=T), 100)

#워드클라우드 조정
palete <- brewer.pal(9,"Set1")
wordcloud(names(wordcount), freq=wordcount, scale=c(10,0.25), rot.per=0.25, min.freq=5, random.order=F,  random.color=T, colors=palete)

#형태변환
rdata<- data.frame(noun2)
rdata

#부정어 단어만들기
neg <- c("단점","부작용","거짓","거짓말","안","안빠짐","문제","손떨림","두통","눈밑떨림",
         "탈모","주의","별로","불면증","우울증","우울","신경과민","식은땀","감기","증상",
         "무력","간","생활습관","위험","탈수","전혀","에라이","현기증","아까움","못",
         "예민","개인차","별차이","의미없음","아무런","아무","솔직히","솔직한","안빠져","소화장애",
         "큰효과","어려운","실패","생각보다","포기","더","찌다","독","아프다","미식",
         "토","증가","불면증","부담","낭비","요요","거짓말","안빠짐","없음","별다른",
         "꽝","신장","당뇨병","골다공증","설사","배탈","알레르기","체중증가","유지","문제",
         "여드름","현실","소화불량","제자리","제자리걸음","증가","위험","병행","소용","과대",
         "실망","없다","광고","생리불순","실망","별다른","효과없음","별차이","과대광고","속지마세요",
         "호갱","전혀","짜증","제로","사람마다","왕성","욕","돈낭비","낭비","아무",
         "못 본","페북","카페인","1도","페북광고","폭망","비싼","가격부담","쪘다","심각",
         "오히려","이딴","불가능","속았다","과대광고","홍보성","댓글","후회막심","후회해요","비싸다",
         "안해","모르겠다","당황","실망","개뿔","내성","삭제","배아파","눈물나","반응없음",
         "중독","부들부들","알바","댓글알바","불신","전혀","무의미","의미없음","멘붕","속쓰림",
         "절대","그대로","트러블","슬퍼요","불면증","수면장애","의존성","팽만감","더부룩","손떨림",
         "입마름","과민증","카페인","위장병","마케팅","그냥","구역감","일시적","두근거림","혈압상승",
         "팽만감","혈액투석","고혈압","위협","만성질환","사망","통증","마약","심장마비","호소",
         "자궁근종","빈혈","생리","동반","감염","위험","무분별","유발","파열","심각",
         "심부전","당뇨","우려","유해물질","증상","과도","주의","발기부전","위험")
neg


#가중치 부여
rdata$neg <- ifelse(grepl("단점|부작용|거짓|거짓말|안|안빠짐|문제|손떨림|두통|눈밑떨림|
                          탈모|주의|별로|불면증|우울증|우울|신경과민|식은땀|감기|증상|
                          무력|간|생활습관|위험|탈수|전혀|에라이|현기증|아까움|못|
                          예민|개인차|별차이|의미없음|아무런|아무|솔직히|솔직한|안빠져|소화장애|
                          큰효과|어려운|실패|생각보다|포기|더|찌다|독|아프다|미식|
                          토|증가|불면증|부담|낭비|요요|거짓말|안빠짐|없음|별다른|
                          꽝|신장|당뇨병|골다공증|설사|배탈|알레르기|체중증가|유지|문제|
                          여드름|현실|소화불량|제자리|제자리걸음|증가|위험|병행|소용|과대|
                          실망|없다|광고|생리불순|실망|별다른|효과없음|별차이|과대광고|속지마세요|
                          호갱|전혀|짜증|제로|사람마다|왕성|욕|돈낭비|낭비|아무|
                          못 본|페북|카페인|1도|페북광고|폭망|비싼|가격부담|쪘다|심각|
                          오히려|이딴|불가능|속았다|과대광고|홍보성|댓글|후회막심|후회해요|비싸다|
                          안해|모르겠다|당황|실망|개뿔|내성|삭제|배아파|눈물나|반응없음|
                          중독|부들부들|알바|댓글알바|불신|전혀|무의미|의미없음|멘붕|속쓰림|
                          절대|그대로|트러블|슬퍼요|불면증|수면장애|의존성|팽만감|더부룩|손떨림|
                          입마름|과민증|카페인|위장병|마케팅|그냥|구역감|일시적|두근거림|혈압상승|
                          팽만감|혈액투석|고혈압|위협|만성질환사망|통증|마약|심장마비|호소|
                          자궁근종|빈혈|생리|동반|감염|위험|무분별|유발|파열|심각|
                          심부전|당뇨|우려|유해물질|증상|과도|주의|발기부전|위험", rdata$noun2)== TRUE, 1, 0)

rdata$neg

# 가중치변환
(sum(rdata$neg)/nrow(rdata))*100