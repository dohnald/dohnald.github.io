---
layout  : wiki
title   : AI 시작할 때 작업하는 것들
date    : 2025-08-15 01:41:39 +0900
updated    : 2025-09-04 17:05:56 +0900
--- 
AI Agent를 이용해 [아이디어를 코드로 만들면서](../toys) 사용한 잡다한 기술들이다.

## 다양한 AI model을 사용할 때 

gemini와 claude code를 주로 사용하게 된다. 그래서 아래 코드가 유용하다. CLAUDE.md 파일을 만들고 작업하면 gemini를 이용할 때도 반영할 수 있다. qwen은 무료로 사용할 수 있다고 해서 작은 작업에 주로 사용한다.

```bash
ln -s CLAUDE.md gemini.md
ln -s CLAUDE.md qwen.md
```

## 백그라운드에서 작업하기 

오케스트레이션이 필요없는 작업이라면 백그라운드에서 작업을 진행하고 처리하도록 한다. [tmux를 활용한 AI 개발하기(딸깍)](../agent-with-tmux)에서 더 변경된 코드다. 작업 전에 plan.md에 작업할 내용을 리스트로 정리해놓으면 15분에 하나씩 태스크를 수행한다. 

_2025.08.21_ window를 생성하고 삭제할 수 있도록 코드를 수정했다.

_2025.09.04_ github issue를 통해 작업하도록 변경했다. 이 파일만 실행하면 github issue를 확인하고 처리한다. 외부에서 이슈를 등록하면 자동으로 처리한다.

```md
# runner.sh
#!/bin/bash

# 루프 스크립트 파일명
LOOP_SCRIPT="runner_loop.sh"

# jq 설치 여부 확인
if ! command -v jq &> /dev/null
then
echo "오류: jq가 설치되어 있지 않습니다. jq를 설치해주세요."
echo "macOS: brew install jq"
echo "Ubuntu/Debian: sudo apt-get install jq"
exit 1
fi

# 실행 권한 부여
chmod +x "$LOOP_SCRIPT"

echo "[$(date '+%Y-%m-%d %H:%M:%S')] 무한 루프 스크립트 생성 완료: $LOOP_SCRIPT"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] nohup으로 백그라운드에서 실행합니다..."

# 기존에 실행 중인 루프 스크립트가 있다면 종료
pkill -f "$LOOP_SCRIPT"
sleep 1

# nohup으로 백그라운드에서 실행
nohup ./"$LOOP_SCRIPT" >> logs/runner.log 2>&1 &

echo "[$(date '+%Y-%m-%d %H:%M:%S')] 프로세스가 백그라운드에서 실행 중입니다. PID: $!"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] 로그는 logs/runner.log 파일에서 확인할 수 있습니다."
```

```
# runner_loop.sh
#!/bin/bash

# GitHub 저장소 정보
GITHUB_REPO="dohnald/repository"
GITHUB_TOKEN="TOKEN_VALUE"

# 설정 값들
MAX_WAIT_TIME=1800  # 30분 최대 대기 시간
CHECK_INTERVAL=30   # 30초마다 상태 확인
AI_COMPLETION_TIMEOUT=60  # AI 완료 후 60초 대기
TMUX_SESSION="SESSION_NAME"
TMUX_WINDOW="runner"
PRIMARY_AIMODE="gemini --yolo"
SECONDARY_AIMODE="claude --dangerously-skip-permissions"
CURRENT_AIMODE="$PRIMARY_AIMODE"

# 로그 함수
write_log() {
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1"
}

# limit reached 메시지 확인 함수
check_limit_reached() {
  local target="$1"
    local current_output

    current_output=$(tmux capture-pane -t "$target" -p 2>/dev/null || echo "")

# "5-hour limit reached" 메시지 확인
    if echo "$current_output" | grep -q "5-hour limit reached"; then
      return 0  # limit reached 메시지 발견
        fi

        return 1  # limit reached 메시지 없음
}

# AI 에이전트 완료 상태 확인 함수
check_ai_completion() {
  local target="$1"
    local last_output
    local current_output
    local idle_count=0

# 이전 출력 캡처
    last_output=$(tmux capture-pane -t "$target" -p 2>/dev/null || echo "")

    while [ $idle_count -lt 3 ]; do
      sleep $CHECK_INTERVAL
        current_output=$(tmux capture-pane -t "$target" -p 2>/dev/null || echo "")

# 출력이 변경되지 않으면 idle_count 증가
        if [ "$current_output" = "$last_output" ]; then
          idle_count=$((idle_count + 1))
            write_log "AI 에이전트 유휴 상태 감지 ($idle_count/3)"
        else
          idle_count=0
            write_log "AI 에이전트 작업 중..."
            fi

# 프롬프트가 다시 나타났는지 확인 (AI 완료 신호)
            if echo "$current_output" | tail -5 | grep -q "❯\|>\|$" &&
              echo "$current_output" | tail -10 | grep -qE "완료|finished|done|성공"; then
                write_log "AI 에이전트 작업 완료 감지"
                return 0
                fi

                last_output="$current_output"
                done

# 3번 연속 유휴 상태면 완료로 간주
                write_log "AI 에이전트 유휴 상태로 작업 완료 추정"
                return 0
}

# 타임아웃과 함께 AI 작업 대기 함수
wait_for_ai_with_timeout() {
  local target="$1"
    local start_time=$(date +%s)
    local current_time

    write_log "AI 에이전트 작업 모니터링 시작 (최대 대기: ${MAX_WAIT_TIME}초)"

    while true; do
      current_time=$(date +%s)
        elapsed_time=$((current_time - start_time))

# 타임아웃 확인
        if [ $elapsed_time -ge $MAX_WAIT_TIME ]; then
          write_log "타임아웃 발생 (${MAX_WAIT_TIME}초 초과). AI 에이전트를 강제 종료합니다."
            return 1
            fi

# AI 완료 상태 확인
            if check_ai_completion "$target"; then
              write_log "AI 에이전트 작업 완료 확인. 추가 ${AI_COMPLETION_TIMEOUT}초 대기 후 종료"
                sleep $AI_COMPLETION_TIMEOUT
                return 0
                fi
                done
}

# 실제 작업 완료 여부 확인 함수
check_actual_completion() {
  local issue_number="$1"
    local before_commit_count
    local after_commit_count

    write_log "실제 작업 완료 여부 확인 중..."

# Git 상태 확인
    if ! git status --porcelain > /dev/null 2>&1; then
      write_log "경고: Git 저장소가 아닙니다. 작업 완료 확인을 건너뜁니다."
        return 0
        fi

# 커밋 히스토리 확인
        if ! git log --oneline -1 > /dev/null 2>&1; then
          write_log "경고: Git 로그를 확인할 수 없습니다. 작업 완료 확인을 건너뜁니다."
            return 0
            fi

# 이슈 번호가 포함된 최근 커밋 확인
            if git log --oneline -5 | grep -q ".*#$issue_number\|.*issue #$issue_number"; then
              write_log "작업 확인: 이슈 #$issue_number 관련 커밋이 확인되었습니다."
                return 0
            else
              write_log "경고: 이슈 #$issue_number 관련 커밋이 확인되지 않았습니다."
                return 1
                fi
}

# gh 명령어가 설치되어 있는지 확인
if ! command -v gh &> /dev/null; then
write_log "오류: gh 명령어가 설치되어 있지 않습니다. GitHub CLI를 설치해주세요."
exit 1
fi

# tmux가 설치되어 있는지 확인
if ! command -v tmux &> /dev/null; then
write_log "오류: tmux가 설치되어 있지 않습니다. tmux를 설치해주세요."
exit 1
fi

# GitHub 인증 확인 (토큰이 필요할 경우 환경변수 설정)
if ! gh auth status > /dev/null 2>&1; then
write_log "GitHub 인증이 필요합니다. 토큰을 사용하여 인증을 시도합니다."
if ! echo $GITHUB_TOKEN | gh auth login --with-token; then
write_log "오류: GitHub 인증에 실패했습니다."
exit 1
fi
fi

while true; do
write_log "GitHub 이슈 확인 중..."

# gh 명령어를 사용하여 이슈 목록 가져오기 (에러 처리 개선)
if ! ISSUE_LIST=$(gh issue list --repo $GITHUB_REPO --search "sort:created-asc" --state open --limit 1 --json number,title,body --jq '.[0]' 2>/dev/null); then
write_log "오류: GitHub API 호출에 실패했습니다. 네트워크 연결 및 권한을 확인하세요."
sleep 60
continue
fi

if [ -z "$ISSUE_LIST" ]; then
write_log "오류: GitHub에서 데이터를 가져오지 못했습니다. 네트워크 연결을 확인하세요."
sleep 60
continue
fi

# 이슈가 없는 경우 처리
if [ "$ISSUE_LIST" = "null" ]; then
write_log "열려있는 GitHub 이슈가 없습니다. 에이전트 실행을 건너뜁니다."
sleep 600
continue
fi

# 이슈 정보 파싱 (에러 처리 개선)
ISSUE_NUMBER=$(echo "$ISSUE_LIST" | jq -r '.number' 2>/dev/null)
ISSUE_TITLE=$(echo "$ISSUE_LIST" | jq -r '.title' 2>/dev/null)
ISSUE_BODY=$(echo "$ISSUE_LIST" | jq -r '.body' 2>/dev/null || echo "")

if [ "$ISSUE_NUMBER" == "null" ] || [ "$ISSUE_TITLE" == "null" ] || [ -z "$ISSUE_NUMBER" ] || [ -z "$ISSUE_TITLE" ]; then
write_log "오류: 이슈 번호나 제목을 파싱하는 데 실패했습니다."
write_log "응답: $ISSUE_LIST"
sleep 60
continue
fi

write_log "처리할 이슈: #$ISSUE_NUMBER - $ISSUE_TITLE"
write_log "AI 에이전트를 실행합니다."

AGENT_TARGET="$TMUX_SESSION:$TMUX_WINDOW"
PROMPT="GitHub 이슈 #${ISSUE_NUMBER}: '${ISSUE_TITLE}' 작업을 진행해주세요. 작업이 완료되면 커밋 메시지에 이슈 번호를 포함해 커밋하고 푸시하고 텔레그램 알림 발송까지 완료해주세요. gh issue view ${ISSUE_NUMBER} 명령을 이용하면 내용을 확인할 수 있습니다."

write_log "===== 자동 작업 시작 ====="

# tmux 세션 존재 여부 확인
if ! tmux has-session -t "$TMUX_SESSION" 2>/dev/null; then
write_log "tmux 세션 '$TMUX_SESSION'을 생성합니다."
tmux new-session -d -s "$TMUX_SESSION"
fi

# 기존 window가 있다면 종료
if tmux list-windows -t "$TMUX_SESSION" | grep -q "$TMUX_WINDOW"; then
write_log "기존 '$TMUX_WINDOW' 윈도우를 종료합니다."
tmux kill-window -t "$AGENT_TARGET" 2>/dev/null || true
fi

# 새 window 생성 및 에이전트 실행
if ! tmux new-window -d -t "$TMUX_SESSION" -n "$TMUX_WINDOW"; then
write_log "오류: tmux 윈도우 생성에 실패했습니다."
sleep 60
continue
fi

sleep 2

# AI 에이전트 실행
write_log "AI 에이전트 시작: $CURRENT_AIMODE"
tmux send-keys -t "$AGENT_TARGET" "$CURRENT_AIMODE" C-m
sleep 15
# limit reached 메시지 확인
if check_limit_reached "$AGENT_TARGET"; then
write_log "Claude AI limit reached 감지. 대체 에이전트(gemini)로 전환합니다."
# 현재 에이전트 종료
tmux send-keys -t "$AGENT_TARGET" '/quit' C-m 2>/dev/null || true
sleep 5

# 대체 에이전트로 재시도
CURRENT_AIMODE="$SECONDARY_AIMODE"
write_log "대체 AI 에이전트 시작: $CURRENT_AIMODE"
tmux send-keys -t "$AGENT_TARGET" "$CURRENT_AIMODE" C-m
sleep 15
else
CURRENT_AIMODE="$PRIMARY_AIMODE"
fi


# 프롬프트 전송
write_log "작업 지시사항 전송"
tmux send-keys -t "$AGENT_TARGET" "$PROMPT" C-m
sleep 2
tmux send-keys -t "$AGENT_TARGET" C-m

# AI 작업 완료 대기 (개선된 모니터링)
AI_SUCCESS=0
if wait_for_ai_with_timeout "$AGENT_TARGET"; then
write_log "AI 에이전트 작업이 성공적으로 완료되었습니다."
# 실제 작업 완료 여부 확인
if check_actual_completion "$ISSUE_NUMBER"; then
AI_SUCCESS=1
else
write_log "경고: AI 작업이 완료되었지만 실제 변경 사항이 확인되지 않았습니다."
fi
else
write_log "경고: AI 에이전트 작업이 타임아웃되었습니다. 강제 종료를 진행합니다."
fi

# 안전한 종료
write_log "AI 에이전트를 종료합니다."
tmux send-keys -t "$AGENT_TARGET" '/quit' C-m 2>/dev/null || true
sleep 5

# 작업 결과에 따라 이슈 처리
if [ $AI_SUCCESS -eq 1 ]; then
write_log "작업이 성공적으로 완료되었습니다. GitHub 이슈 #${ISSUE_NUMBER}를 close합니다."

# GitHub 이슈 닫기 (에러 처리 추가)
if ! gh issue close $ISSUE_NUMBER --repo $GITHUB_REPO --comment "이슈가 자동으로 처리되어 닫혔습니다." 2>/dev/null; then
write_log "경고: GitHub 이슈 #${ISSUE_NUMBER} 닫기에 실패했습니다. 수동으로 확인해주세요."
else
write_log "GitHub 이슈 #${ISSUE_NUMBER}가 성공적으로 닫혔습니다."
fi
else
write_log "작업이 실패했거나 확인되지 않았습니다. GitHub 이슈 #${ISSUE_NUMBER}를 유지합니다."
# 실패 메시지 추가
if ! gh issue comment $ISSUE_NUMBER --repo $GITHUB_REPO --body "자동 처리 시도했으나 작업이 완료되지 않았습니다. 수동 확인이 필요합니다." 2>/dev/null; then
write_log "경고: GitHub 이슈 #${ISSUE_NUMBER}에 실패 메시지 추가 실패."
else
write_log "GitHub 이슈 #${ISSUE_NUMBER}에 실패 메시지를 추가했습니다."
fi
fi

write_log "===== 작업 종료 ====="

# tmux 윈도우 정리
if tmux list-windows -t "$TMUX_SESSION" | grep -q "$TMUX_WINDOW"; then
tmux kill-window -t "$AGENT_TARGET" 2>/dev/null || true
fi

# AI 모드를 기본값으로 재설정
CURRENT_AIMODE="$PRIMARY_AIMODE"

write_log "다음 이슈 확인을 위해 10초 대기합니다."
sleep 10
done
```

## 계획 완료하면 종료하기(deprecated)

_2025.09.04_ runner가 계속 실행하기 때문에 종료하지 않는다. 이슈가 없으면 작업을 하지 않아 처음 의도한 불필요한 비용을 제거한다.

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
