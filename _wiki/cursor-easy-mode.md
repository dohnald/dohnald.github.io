---
layout  : wiki
title   : cursor 간단한 작업 자동화 
date    : 2025-08-06 00:31:15 +0900
updated : 2025-08-06 00:41:12 +0900
published : true
--- 
테스트로 cursor를 써보고 있다. [켄트 백의 CLAUDE.md](https://tidyfirst.substack.com/p/augmented-coding-beyond-the-vibes?ref=stdy.blog)([요약 번역](https://www.stdy.blog/warning-signs-for-off-track-ai-and-tdd-system-prompts-by-kent-beck/))를 보고 똑같이 작업할 수 없지만 go 명령으로 작업을 지시하는 게 멋지고 편하다고 생각해 cursor에 rule을 추가했다.

```txt
모든 소통은 한글로 합니다.
브랜치 이름은 티켓 번호와 일치합니다.
커밋 메시지는 {id} {summary} 형태로 작성합니다.
run을 입력하면 브랜치 이름과 일치하는 jira ticket 정보를 확인해서 작업내용을 검토합니다.
해야 할 일을 markdown checkbox 형태로 plan-{branchName}.md 파일에 저장합니다. 
이 파일은 절대 커밋하지 않고 .gitignore에 등록하지도 않습니다.
go를 입력하면 unchecked 항목을 하나씩 처리하도록 합니다.
```
업무용으로 사용해보려고 작성했고, jira는 mcp로 연결을 했다. 작업할 티켓을 골라 브랜치를 생성한 후 cursor에 `run`을 입력하면 plan-{branchName}.md 파일을 생성한다. 이 내용을 검토해서 간단한 작업이면 수정하고 간단하지 않으면 맥락 정보를 제공한다. 위키나 슬랙 대화를 추가하면 잘 이해해서 plan을 업데이트한다. `go`를 입력하면 작업을 처리한다. 

이 작업은 정말 단순한 작업을 대상으로 시도했다. TDD가 없거나 여러 조건을 통해 프론트 노출을 검증해야 하는 케이스에서 주로 사용하고 있다.
