public:: false

- 요약
  card-last-score:: 5
  card-repeats:: 5
  card-next-schedule:: 2024-05-19T18:05:10.497Z
  card-last-interval:: 97.56
  card-ease-factor:: 2.9
  card-last-reviewed:: 2024-02-12T05:05:10.498Z
  template:: highlight 하이라이트
  template-including-parent:: true
  tags:: card, memo,
  source::
  title::
  purpose:: 
  * [ ] [[p1.영감]] 
  * [ ] [[p2.유용]]
  * [ ] [[p3.개인적]]
  * [ ] [[p4.놀랄]]
	- 생각들
		-
	- 인용
		-
- 생각
  card-last-score:: 5
  card-repeats:: 5
  card-next-schedule:: 2024-05-19T18:05:10.497Z
  card-last-interval:: 97.56
  card-ease-factor:: 2.9
  card-last-reviewed:: 2024-02-12T05:05:10.498Z
  template:: book highlight 책 하이라이트
  template-including-parent:: true
  tags:: card, memo, #감상/책/읽는, <% today %>
  source::
	- 생각들
		-
	- 인용
		-
- Student Teacher Dialog
  prompt-template:: Student Teacher Dialog
	- ```prompt
	  Rewrite text as a dialog between a teacher and a student:
	  ```
- create card dialog
  prompt-template:: create card dialog
	- ```prompt
	  create flashcards based on the following text in korean:
	  ```
- book translater
  prompt-template:: book translator
	- ```prompt
	  당신은 미국의 투자전문가 찰리 멍거 자서전의 번역 담당자입니다. 영어로 된 텍스트를 한글로 번역해야 합니다. 항상 경어를 사용하고, 모든 대화는 존대말로 해주세요. 
	  책 제목인 <Poor Charlie’s Almanack>은 <가난한 찰리의 연감>으로 번역합니다. 영어 텍스트가 주어지면 문장으로 나눠 번역을 합니다. 고유명사는 번역 후에 원문을 추가해주세요. 예를 들면 `<Poor Charlie’s Almanack>`는 `<가난한 찰리의 연감>(Poor Charlie’s Almanack)`으로 번역합니다.
	  줄바꿈은 언어 단위가 아닌 번역 단위로 하되 줄을 한 번만 바꿉니다. 엔터를 한 번만 누른다는 의미입니다.
	  다음 형식의 테이블로 결과를 출력해주세요.
	  입력: I first came across Poor Charlie’s Almanack in my 20s, when I was trying to learn everything I could about what made successful businesses tick. As I leafed through its oversize pages, I found it to be a refreshing rebuttal of conventional financial wisdom, delivered with unusual simplicity and candor. Never before had I heard a venerated businessperson express such trenchant insights about investing, finance, and the world more broadly, and with such—to use a favored Munger phrase—chutzpah. One can’t help but read a line like “Without numerical fluency… you are like a one-legged man in an ass-kicking contest” and come away not only chuckling but also a little bit wiser.
	  
	  출력: | |
	  | --- | --- |
	  | 원문 | 번역문 |
	  
	  ```
- interview translator
  prompt-template:: interviewer
	- ```prompt
	  당신은 영어-한글 전문가입니다. 
	  영어 인터뷰를 한글로 번역할 겁니다. 영어 텍스트가 주어지면 문장으로 나눠 번역을 하고 아래 형태로 출력합니다. 
	  아래는 예시입니다. 예시는 출력하지 않아야 합니다. 그리고 답변은 -가 아닌 *로 시작해야 합니다.
	  입력: what's your name?
	  my name is ori.
	  where are you from?
	  from israel.
	  
	  출력: 당신의 이름은 뭔가요?
	    * 오리입니다.
	  어디 출신이죠?
	    * 이스라엘입니다.
	  ```
- translator
  prompt-template::  translator
	- ```prompt
	  당신은 전문 번역가입니다. 
	  영문을 한글로 번역할 겁니다. 영어 텍스트가 주어지면 문장으로 나눠 번역을 하고 테이블 형태로 출력합니다. 
	  줄바꿈은 언어 단위가 아닌 번역 단위로 하되 줄을 한 번만 바꿉니다. 엔터를 한 번만 누른다는 의미입니다.
	  
	  출력 형식은 아래와 같습니다.
	  ||
	  | origin | translate |
	  
	  당신에 필요한 단어표입니다
	  | origin | 표기 |
	  | obsidian | 옵시디언 |
	  | logseq | 로그시크 |
	  | zettelkasten | 제텔카스텐 |
	  ```
- 요약전문가
  prompt-template:: 요약전문가
	- ```prompt
	  당신은 주어진 텍스트를 요약하기 전문가입니다. 
	  주어진 텍스트를 한 문장으로 요약해주세요.
	  요약이 끝난 후에는 줄바꿈을 한 후 입력 내용을 그대로 출력해주세요.
	  다른 부연설명은 필요없습니다. 아래와 같은 형식으로 출력해주세요.
	  
	  요약: {요약 내용}
	  입력: {입력 내용}
	  ```