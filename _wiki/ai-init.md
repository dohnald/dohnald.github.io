---
layout  : wiki
title   : AI 시작할 때 작업하는 것들
date    : 2025-08-15 01:41:39 +0900
updated    : 2025-08-16 22:10:03 +0900
--- 
AI Agent를 이용해 [아이디어를 코드로 만들면서](../toys) 사용한 잡다한 기술들이다.

## 다양한 AI model을 사용할 때 

gemini와 claude code를 주로 사용하게 된다. 그래서 아래 코드가 유용하다. CLAUDE.md 파일을 만들고 작업하면 gemini를 이용할 때도 반영할 수 있다. 

```bash
ln -s CLAUDE.md gemini.md
```

## 백그라운드에서 작업하기 

오케스트레이션이 필요없는 작업이라면 백그라운드에서 작업을 진행하고 처리하도록 한다. [tmux를 활용한 AI 개발하기(딸깍)](../agent-with-tmux)에서 더 변경된 코드다. 작업 전에 plan.md에 작업할 내용을 리스트로 정리해놓으면 15분에 하나씩 태스크를 수행한다. 

```md
#!/bin/bash

# 루프 스크립트 파일명
LOOP_SCRIPT="runner_loop.sh"

cat > "$LOOP_SCRIPT" << 'EOF'
#!/bin/bash

while true; do
    # Tmux 타겟 세션 설정
    AGENT_TARGET="LMS:0"

    # 랜덤하게 선택된 AI 모드
    AIMODE="claude --dangerously-skip-permissions"

    PROMPT="@plan.md를 확인해 미완료 작업 한 개를 작업해줘"

    # 작업 시작 메시지 출력
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] ===== 자동 작업 시작 ====="
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 타겟 tmux 세션: $AGENT_TARGET"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 선택된 AI 모드: $AIMODE"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] ----------------------------------------"

    # AI 모드 명령 전송
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [1/3] AI 모드 설정 중... ($AIMODE)"
    tmux send-keys -t "$AGENT_TARGET" "$AIMODE"
    sleep 1
    tmux send-keys -t "$AGENT_TARGET" C-m
    sleep 15

    # 프롬프트 전송
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [2/3] 분석 프롬프트 전송 중..."
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 프롬프트 내용: ${PROMPT:0:100}..." # 프롬프트 앞부분만 100자 표시
    tmux send-keys -t "$AGENT_TARGET" "$PROMPT"
    sleep 1
    tmux send-keys -t "$AGENT_TARGET" C-m
    sleep 850

    # 종료 명령 전송
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [3/3] 분석 완료 후 세션 종료 중..."
    tmux send-keys -t "$AGENT_TARGET" '/quit'
    sleep 1
    tmux send-keys -t "$AGENT_TARGET" C-m
    sleep 10

    # 작업 완료 메시지
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] ----------------------------------------"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 결과는 reports 디렉토리에서 확인 가능합니다."
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 텔레그램으로 작업이 전송되었습니다."
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] ===== 작업 종료 ====="
    
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] 🕒 잠시 후 다음 작업을 실행합니다..."
    sleep 10 
done
EOF

# 실행 권한 부여
chmod +x "$LOOP_SCRIPT"

echo "[$(date '+%Y-%m-%d %H:%M:%S')] 무한 루프 스크립트 생성 완료: $LOOP_SCRIPT"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] nohup으로 백그라운드에서 실행합니다..."

# nohup으로 백그라운드에서 실행
nohup ./"$LOOP_SCRIPT" > logs/runner.log 2>&1 &

echo "[$(date '+%Y-%m-%d %H:%M:%S')] 프로세스가 백그라운드에서 실행 중입니다. PID: $!"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 로그는 runner.log 파일에서 확인할 수 있습니다."

# 실행 중인 프로세스 확인
# ps aux | grep runner_loop.sh | grep -v grep
# 해당 프로세스 종료
# kill [확인한 PID]
```

## 계획 완료하면 종료하기

작업을 계속 실행하면 불필요한 비용이 지출될 수 있다. 아래 내용을 plan.md에 추가해놓으면 작업이 끝나면 프로세스 종료까지 진행한다.
```md
### 작업 완료 후 절차
1. `plan.md`의 해당 항목 체크
2. 변경사항 커밋 (Commit)
3. `message.md` 정보 기반으로 텔레그램 알림 발송
4. 더이상 unchecked list가 없을 경우 `ps aux | grep runner_loop.sh | grep -v grep` 명령을 입력해 PID를 획득한 후 `kill {pid}`를 입력해 runner 종료. runner 종료했다는 텔레그램 알림 발송
```

## 텔레그램 알림 받기

텔레그램은 웹훅으로 이용하기 쉬운 메신저이다. botToken과 chatId만 있으면 메시지를 쉽게 발송할 수 있다. 그래서 지시에 아래 메시지를 추가해 작업이 끝날 때마다 알림을 받도록 해놓았다. 

```md
plan.md의 태스크가 끝나면 message.md의 botToken과 chatId를 참고해 curl로 텔레그램 알림을 발송한다.
```
