---
layout  : wiki
title   : Vimwiki 할 일(Todo) 관리 시스템을 Logseq 스타일로 바꾸기 (Feat. Gemini)
date    : 2025-08-04 18:25:46 +0900
updated : 2025-08-04 19:02:31 +0900
published : true
--- 

제목을 제외한 나머지는 Gemini가 작성했다. 코드도 Gemini가 작성했다.

최초 개발은 vimwiki를 직접 수정했으나 이후에 [vim plugin](https://github.com/dohnald/vimwiki-logseq-tasks)으로 추가했다.

---

# Vimwiki 할 일(Todo) 관리 시스템을 Logseq 스타일로 바꾸기 (Feat. Gemini)

## 개요 (Overview)

Vimwiki와 Logseq는 둘 다 마크다운 기반의 강력한 지식 관리 도구입니다. 하지만 할 일(Todo)을 관리하는 방식에 차이가 있어 함께 사용할 때 불편함이 있었습니다.

-   **Vimwiki**: `[ ]`, `[X]`, `[o]` 같은 체크박스(checkbox) 심볼을 사용합니다.
-   **Logseq**: `TODO`, `DOING`, `DONE` 같은 텍스트 키워드를 사용합니다.

이 차이 때문에 `<C-Space>` 단축키를 눌렀을 때의 동작을 통일하고 싶었지만, Vimwiki 플러그인의 키 매핑(key mapping) 방식이 워낙 강력해서 `.vimrc`나 `ftplugin` 설정으로는 해결되지 않았습니다.

그래서 Vimwiki의 소스 코드를 직접 수정하여 근본적인 해결책을 찾기로 했습니다. 이 글에서는 그 과정을 공유합니다.

## 변경 대상 파일 (Target File)

-   **파일 경로 (File Path):** `~/.vim/bundle/vimwiki/autoload/vimwiki/lst.vim`
-   **대상 함수 (Target Function):** `vimwiki#lst#toggle_cb`

이 함수는 Vimwiki에서 리스트 아이템의 체크박스를 토글하는 핵심 로직을 담고 있습니다.

## 변경 사항 (Diff)

`vimwiki#lst#toggle_cb` 함수의 변경 사항입니다.

```diff
- function! vimwiki#lst#toggle_cb(from_line, to_line) abort
-   " Toggles checkbox between [ ] and [X] or creates one
-   " in the lines of the given range
-   return s:toggle_create_cb(a:from_line, a:to_line, 100, 0, 0)
- endfunction
+ function! vimwiki#lst#toggle_cb(from_line, to_line) abort
+   " Toggles between TODO, DOING, DONE for items in a given range
+   for lnum in range(a:from_line, a:to_line)
+     let line = getline(lnum)
+ 
+     " Remove any existing Vimwiki checkbox
+     let line = substitute(line, '\s\+\[.\]\s*', ' ', '')
+ 
+     let marker_regex = '^\v(\s*([*#+-]|\d+\.)\s+)'
+     let matches = matchlist(line, marker_regex)
+ 
+     if !empty(matches)
+       let marker = matches[0]
+       let content = trim(strpart(line, strlen(marker)))
+ 
+       if content =~# '^DONE\(\s\|$\)'
+         " DONE -> (nothing)
+         let new_content = substitute(content, '^DONE\s*', '', '')
+       elseif content =~# '^DOING\(\s\|$\)'
+         " DOING -> DONE
+         let new_content = substitute(content, '^DOING', 'DONE', '')
+       elseif content =~# '^TODO\(\s\|$\)'
+         " TODO -> DOING
+         let new_content = substitute(content, '^TODO', 'DOING', '')
+       else
+         " (nothing) -> TODO
+         let new_content = 'TODO ' . content
+       endif
+ 
+       " Reconstruct the line, trimming the final result to avoid double spaces
+       call setline(lnum, marker . trim(new_content))
+     endif
+   endfor
+ endfunction

```

## 코드 설명 (Code Explanation)

### 기존 코드 (Original Code)

기존 코드는 내부 함수인 `s:toggle_create_cb`를 호출하여 체크박스의 상태를 `[ ]` -> `[X]` -> `[o]` 순서로 변경하는 단순한 구조였습니다.

### 새로운 코드 (New Code)

새로운 코드는 `TODO` -> `DOING` -> `DONE` -> `(빈 상태)` 순서로 상태를 순환시키는 로직을 구현했습니다.

1.  **기존 체크박스 제거 (Remove Checkbox):**
    -   `substitute(line, '\s\+\[.\]\s*', ' ', '')`
    -   먼저 기존 Vimwiki의 `[ ]` 같은 체크박스를 정규식(regex)으로 찾아 제거합니다.

2.  **리스트 마커 식별 (Identify List Marker):**
    -   `let marker_regex = '^\v(\s*([*#+-]|\d+\.)\s+)'`
    -   `*`, `-`, `1.` 등 리스트 아이템의 시작을 나타내는 마커(marker)를 정규식으로 찾습니다.

3.  **상태 순환 로직 (State Cycling Logic):**
    -   `if content =~# '^DONE\(\s\|$\)'`
        -   `DONE`으로 시작하면 키워드를 제거하여 빈 상태로 만듭니다. `\(\s\|$\)`는 단어 뒤에 공백이나 줄의 끝이 오는 경우를 모두 처리하여, `DONE`이라는 단어만 정확히 인식하도록 합니다.
    -   `elseif content =~# '^DOING\(\s\|$\)'`
        -   `DOING`을 `DONE`으로 변경합니다.
    -   `elseif content =~# '^TODO\(\s\|$\)'`
        -   `TODO`를 `DOING`으로 변경합니다.
    -   `else`
        -   아무 키워드도 없으면 맨 앞에 `TODO`를 추가합니다.

4.  **줄 재구성 (Reconstruct Line):**
    -   `call setline(lnum, marker . trim(new_content))`
    -   식별된 마커와 새로 변경된 내용을 조합하여 현재 줄을 다시 씁니다. `trim()` 함수로 불필요한 공백을 제거하여 깔끔하게 만듭니다.

## 마무리 (Conclusion)

이제 Vimwiki에서도 `<C-Space>`를 누르면 Logseq처럼 `TODO`, `DOING`, `DONE` 상태가 순환되어, 두 도구를 함께 사용할 때의 생산성이 크게 향상되었습니다. 플러그인 업데이트 시 수정 사항이 초기화될 수 있다는 단점은 있지만, 직접 소스 코드를 수정하여 원하는 기능을 구현했다는 점에서 매우 만족스러운 경험이었습니다.

## 추가(사람이 작성)

vim plugin으로도 개발했습니다. [https://github.com/dohnald/vimwiki-logseq-tasks](https://github.com/dohnald/vimwiki-logseq-tasks)
