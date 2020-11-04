### <감석분석을 활용한 다이어트 보조식품에 대한 온라인 평판분석>



#### 1. 프로젝트 내용 내용 요약

1. 본 연구에서는 체중 감량을 위해 무분별한 다이어트 식품의 남용을 막고, 다이어트 보조 식품에 대한 정보를 제공하기 위해서 감성 분석을 활용하여 다이어트 보조 식품에 대한 온라인 후기를 분석
2. 다이어트 보조 식품을 그 특성에 따라 네 가지 종류로 분류하고 각 카테고리 별로 긍정 및 부정 점수를 계산
3. 체중 감량에 대한 감성 사전을 다이어트 식품에 대한 후기를 텍스트 마이닝하여 구축
4. 특히 부작용이 있는 식품에 대한 부정 점수에 가중치를 두기 위해서 WHO-ART에서 정의한 부작용 용어에는 가중치를 두어 처리
5. 분석 결과 단백질 보충 식품군이 긍정 점수가 가장 높게 나타났고, 이는 다이어트를 위한 목적 이외에도 운동을 전문적으로 하는 사람들에게 오랜기간 사용되어 왔기 때문인 것으로 해석
6. 식욕 억제제 식품군이 긍정점수는 가장 낮고 부정 점수는 가장 높게 나타났는데, 이는 식욕억제제의 주성분인 펜타민에 의한 가능성이 클 것이라고 예측



#### 2. 개발일정 및 개발 인원 소개

개발일정 |  내용  
:---: | --- 
2018-01-02 | 프로젝트 시작
2018-03-03 | 코드완성, 논문 작성
2018-04-05 | 논문 작성 완료
2018-05-12 | 논물 발표, 프로젝트 완료

사용 언어 : R

제작 인원 : 3명 ( 학생2 + 교수1) 

제작 기간 : 4달

협업 방식 : 주 1~2회 미팅, 매일 상황 공유



#### 3. 프로젝트 개요
1. 크롤링(crawling)하여 다이어트 보조 식품에 관한 후기 및 댓글들을 수집
2. 전처리
3. R 프로그램에서 감성 분석을 실시
4. 다이어트 보조 식품의 그룹별 온라인 평판 분석 실시
5.SNS 댓글과 후기를 참고하여 다이어트를 주제로 한 감성 사전을 구축
   * World Health Organization Adverse Reaction Terminology 에 정의된 부작용을 나타내는 표준 단어들에 가중치를 부과
6. 부정 점수를 산정



### 4. 데이터수집
1. 본 연구는 텍스트 마이닝(Text Mining)을 이용하여 포털 블로그에서 각 다이어트 보조 식품의 장점과 단점 및 부작용을 검색 후, 100여 개의 사용자들의 후기를 스크랩하여 수집
2. 수집 기간은 2018년 2월 5일부터 2018년 3월 11일까지 약 한달 간의 자료를 분석
3. 분류된 4가지 카테고리 별 후기를 크롤링(crawling)하여 분석할 문장의 군집분석
4. 세종사전을 이용하여 명사만 추출
5. 데이터 전처리
6. 데이터 시각화 



### 5. 감성사전
1. 감성 사전은 비정형 데이터를 분석하여 긍정, 부정으로 나누어 활용
2. 다이어트 보조 식품에 관련한 상품평을 분석하기 위해 다이어트 보조 식품 사용자들의 어휘를 고려하여 감성 사전을 구축
3. 부정 점수에서 후기나 검색 결과에 부작용 사례가 등장할 때, WHO-ART에 등록되어 있는지 유무를 확인 후 등록되어 있다면 가중치를 주어 계산


분류 |  단어  
:---: | --- 

긍정 | 날씬, 가느다란, 추천, 변비탈출, 간편,식욕부진, 성공, 효율적, 줄어들다, 감소하다, 빠지다, 억제, 도움, 원활, 성공, 극대화, 만족, 극복, 체중감량, 재구매
부정 | 거짓, 증가, 별다른, 제자리, 돈낭비, 과대광고, 실망, 없다, 체중증가, 일시적, 요요, 가격부담, 부작용, 무분별, 손상, 피해, 포기, 주의, 과도, 왕성, 내성, 망했다
WHO-ART | 손떨림, 두통, 탈모, 불면증, 우울증, 신경과민, 설사, 탈수, 현기증, 여드름, 소화장애, 무기력, 간손상, 구토, 생리불순, 두드러기, 메스꺼움, 어지러움, 가슴통증, 피로










 
