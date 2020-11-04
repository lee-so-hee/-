### 감석분석을 활용한 다이어트 보조식품에 대한 온라인 평판분석


#### Introduction

본 연구에서는 체중 감량을 위해 무분별한 다이어트 식품의 남용을 막고, 다이어트 보조 식품에 대한 정보를 제공하기 위해서 감성 분석을 활용하여 다이어트 보조 식품에 대한 온라인 후기를 분석하였습니다.
먼저, 다이어트 보조 식품을 그 특성에 따라 네 가지 종류로 분류하고 각 카테고리 별로 긍정 및 부정 점수를 계산하였습니다
이를 위해 체중 감량에 대한 감성 사전을 다이어트 식품에 대한 후기를 텍스트 마이닝하여 구축하였습니다.
특히 부작용이 있는 식품에 대한 부정 점수에 가중치를 두기 위해서 WHO-ART에서 정의한 부작용 용어에는 가중치를 두어 처리하였습니다.
분석 결과 단백질 보충 식품군이 긍정 점수가 가장 높게 나타났고, 이는 다이어트를 위한 목적 이외에도 운동을 전문적으로 하는 사람들에게 오랜기간 사용되어 왔기 때문인 것으로 해석됩니 
또한 식욕 억제제 식품군이 긍정점수는 가장 낮고 부정 점수는 가장 높게 나타났는데, 이는 식욕억제제의 주성분인 펜타민에 의한 가능성이 클 것이라고 예측됩니다. 

#### 개발일정 및 개발 인원 소개

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

#### 프로젝트 개요
1. 크롤링(crawling)하여 다이어트 보조 식품에 관한 후기 및 댓글들을 수집
2. 전처리
3. R 프로그램에서 감성 분석을 실시
4. 다이어트 보조 식품의 그룹별 온라인 평판 분석 실시
5.SNS 댓글과 후기를 참고하여 다이어트를 주제로 한 감성 사전을 구축
   * World Health Organization Adverse Reaction Terminology (이하 “WHOART”라 함)에 정의된 부작용을 나타내는 표준 단어들에 가중치를 부과
6. 부정 점수를 산정
 
