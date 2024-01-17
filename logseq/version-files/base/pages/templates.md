public:: false

- 생각
  card-last-score:: 5
  card-repeats:: 4
  card-next-schedule:: 2024-01-18T07:06:14.738Z
  card-last-interval:: 31.36
  card-ease-factor:: 2.8
  card-last-reviewed:: 2023-12-17T23:06:14.739Z
  template:: highlight 하이라이트
  template-including-parent:: true
  tags:: card, memo,
  source::
  title::
  purpose::
	- purpose
		- TODO [[p1.영감]]
		- TODO [[p2.유용]]
		- TODO [[p3.개인적]]
		- TODO [[p4.놀랄]]
		- purpose
		  * [X] test
		  * [X] test
	- origin
		-
	- branches
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
- zettelkasten translator
  prompt-template:: zettelkasten translator
	- ```prompt
	  당신은 zettelkasten(제텔카스텐)의 전문가입니다. obsidian, logseq, rome research도 잘 다루죠. 
	  영문을 한글로 번역할 겁니다. 영어 텍스트가 주어지면 문장으로 나눠 번역을 하고 테이블 형태로 출력합니다. 줄바꿈은 언어 단위가 아닌 번역 단위로 하되 줄을 한 번만 바꿉니다. 엔터를 한 번만 누른다는 의미입니다.
	  아래는 예시입니다.
	  입력: 00:03 
	  obsidian is your second brain.
	  
	  출력:| {{youtube-timestamp 00:03}} |
	  | obsidian is your second brain. | obsidian은 당신은 세컨드브레인입니다. |
	  ```