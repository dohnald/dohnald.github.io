public:: false

- TODO [EDA](https://aws.amazon.com/ko/what-is/eda/)
- TODO [[2024/02/27]] [잡지/더스쿠프 The SCOOP Vol.586](https://millie.page.link/?ibi=kr.co.millie.MillieShelf&efr=1&link=https://link.millie.co.kr/v3/bookDetail/179642300%3Furl%3Dhttps://www.millie.co.kr/v3/bookDetail/179642300)
- TODO [[2024/02/27]] [잡지/이코노미스트 2024.02(1723호)](https://millie.page.link/?ibi=kr.co.millie.MillieShelf&efr=1&link=https://link.millie.co.kr/v3/bookDetail/179641907%3Furl%3Dhttps://www.millie.co.kr/v3/bookDetail/179641907)
- TODO [[2024/02/27]] [잡지/매경이코노미 2248호](https://millie.page.link/?ibi=kr.co.millie.MillieShelf&efr=1&link=https://link.millie.co.kr/v3/bookDetail/179641999%3Furl%3Dhttps://www.millie.co.kr/v3/bookDetail/179641999)
- [[『발터 벤야민의 공부법』]]
  collapsed:: true
- [[거인의 노트, 김익한]]
- TODO [[2024/03/06]] [EO 이오-실리콘밸리 30년차가 요즘 세대에게 꼭 해주고 싶은 이야기ㅣ임수미](https://youtube.com/watch?v=wPIm4cDTPO0&si=O9NmouIvyB6x3DS2) 
  collapsed:: true
	- ![](https://i.ytimg.com/vi/wPIm4cDTPO0/hqdefault.jpg)
- DONE [[2024/03/06]] [슈카월드 코믹스-쌍둥이는 1000만원](https://youtube.com/watch?v=hs6IOkPON7E&si=n7RBQGKx8PjnCvD0) 
  collapsed:: true
	- ![](https://i.ytimg.com/vi/hs6IOkPON7E/hqdefault.jpg)
- TODO [[2024/03/06]] [그것이 알고싶다-"법의학자가 제일 편해!" 편견 박살 내는 법의학자 이호의 하루ㅣ이호의 2호를 찾아서 EP.1](https://youtube.com/watch?v=XwW7Iq_Wyvo&si=T7JEhbKl9Izv22JF) 
  collapsed:: true
	- ![](https://i.ytimg.com/vi/XwW7Iq_Wyvo/hqdefault.jpg)
- TODO [[2024/03/06]] [미키피디아-🌜갓생 직장인이 되는 나이트 루틴! 오늘부터 해보세요 (feat.스킨수티컬즈)](https://youtube.com/watch?v=LqVaMCvZ4wc&si=Z7V0OVmXp7C0rsih) 
  collapsed:: true
	- ![](https://i.ytimg.com/vi/LqVaMCvZ4wc/hqdefault.jpg)
- TODO [[2024/03/07]] [끼메리의 책탐험-독서의 질이 100배 상승하는 다이소 추천템 5가지 / ⭐보너스⭐ 레전더리 인생 독서템 소개](https://youtube.com/watch?v=fptv4SNwovQ&si=iQI7bKLvP7vnJMgb) 
  collapsed:: true
	- ![](https://i.ytimg.com/vi/fptv4SNwovQ/hqdefault.jpg)
- DONE [[2024/03/07]] [주군 Joogoon-[GoPro Tip] 방송국 고프로는 어떤 설정을 사용할까? [GoPro]](https://youtube.com/watch?v=95Mz6-Lqess&si=kxvDW-cp4hAdcnYw) 
  collapsed:: true
	- ![](https://i.ytimg.com/vi/95Mz6-Lqess/hqdefault.jpg)
- TODO [[2024/03/07]] [용숙부부-전세계 여행자들이 모이는 발리 우붓 맛집 알려드릴게요 🇮🇩](https://youtube.com/watch?v=ffGPDZdC5ec&si=uaQZlB3xH-sGY1TN) 
  collapsed:: true
	- ![](https://i.ytimg.com/vi/ffGPDZdC5ec/hqdefault.jpg)
- DONE [[2024/03/07]] [성심당TV-'노잼도시 대전'을 만든 주인공! 기승전성심당 알고리즘 원작자분과의 인터뷰](https://youtube.com/watch?v=pirNXPfmaMA&si=MNML0MNDxtlvgwzw) 
  collapsed:: true
	- ![](https://i.ytimg.com/vi/pirNXPfmaMA/hqdefault.jpg)
- TODO [[2024/03/07]] [더스티노(DUSTINO)-3년차 바이크 유튜버의 액션캠 추천은? 일반 액션캠 VS 360카메라(인스타 360 X3)](https://youtube.com/watch?v=FkdtBv3caxs&si=OHBBUpbuywfTk9zx) 
  collapsed:: true
	- ![](https://i.ytimg.com/vi/FkdtBv3caxs/hqdefault.jpg)
- DONE [[2024/03/07]] [아키노트-매일매일 독서하면 이렇게 됩니다!! 쇼츠 말고 책을 읽어야하는 진짜 이유! 📚 [cc]](https://youtube.com/watch?v=l3xt3S1JrrM&si=LQp660fyCu5_ZEEs) 
  collapsed:: true
	- ![](https://i.ytimg.com/vi/l3xt3S1JrrM/hqdefault.jpg)
- [[chatGPT]]
	- git commit하기 전에 .git/info/exclude에 파일 이름을 추가하고, 이 파일들은 커밋을 하고싶지 않습니다. 대상 파일은 `grep -lr "public:: false" pages | awk "{print $1}"` 명령으로 확인합니다. 이 작업을 자동화하려면 어떻게 해야 할까요? git pre-commit hook에 grep 명령을 추가하면 잘 작동할까요?
		- * `git ls-files | grep "pages"` 명령어를 사용하여 pages 폴더 내의 파일 리스트를 확인합니다.
		  * `grep -lr "public:: false" pages | awk "{print $1}"` 명령어를 사용하여 조건에 맞는 파일을 확인합니다.
		  * .git/info/exclude 파일을 열어서 해당 파일 이름을 추가합니다.
		  * 이후 `git commit`을 진행하면 해당 파일들은 커밋되지 않습니다.
		- * 파일을 `.git/info/exclude`에 추가하여 커밋 대상에서 제외하는 것은 좋은 방법입니다.
		  * `grep -lr "public:: false" pages | awk "{print $1}"` 명령어로 커밋하지 않을 파일을 확인한 후, `.git/info/exclude`에 해당 파일명을 추가하세요.
		  * 이렇게 하면 해당 파일은 더 이상 커밋되지 않습니다.*
		- answer 
		  * "public::  false" 문자열을 포함하는 파일이 변경될 때마다 pre-commit hook을 실행하여 자동으로 .git/info/exclude 파일에 파일 이름을 추가하는 스크립트를 작성할 수 있습니다.
		  * 다음 단계를 따르면 됩니다:
		    
		  ```bash
		  #!/bin/sh
		  
		  # pre-commit 스크립트 작성
		  echo '#!/bin/sh' > .git/hooks/pre-commit
		  echo 'grep -lr "public:: false" pages | awk "{print $1}" >> .git/info/exclude' >> .git/hooks/pre-commit
		  chmod +x .git/hooks/pre-commit
		  ```
		  
		  이렇게 하면 변경 사항을 커밋하기 전에 .git/info/exclude 파일에 해당 파일 이름이 자동으로 추가됩니다.