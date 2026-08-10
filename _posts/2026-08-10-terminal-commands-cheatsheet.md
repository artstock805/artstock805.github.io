---
title: 터미널 명령어 모음
date: 2026-08-10 10:00:00 +0900
categories: [교육, 아이펠]
tags: [터미널, CLI, 명령어, 학습기록]
---

> **터미널이 처음인 분들을 위한 안내**
{: .prompt-info }

터미널(Terminal)은 마우스 대신 글자 명령어로 컴퓨터를 다루는 도구예요. 처음엔 낯설지만, 자주 쓰는 명령어 20~30개만 익히면 파일 정리, 개발, 서버 작업이 훨씬 빨라집니다. 아래 명령어는 macOS와 Linux에서 거의 동일하게 동작해요.

## 1. 터미널 열기 & 설치

터미널 프로그램은 macOS와 Linux에 기본으로 이미 설치되어 있어요. 따로 설치할 필요 없이 여는 방법만 알면 됩니다.

**macOS**

- 기본 터미널 열기: `Command(⌘) + Space` → "터미널" 또는 "Terminal" 입력 후 Enter
- 또는 Finder → 응용 프로그램 → 유틸리티 → 터미널.app 실행
- (선택) 더 편한 터미널을 원하면 iTerm2를 쓰기도 해요 → <https://iterm2.com>

**Linux (Ubuntu 기준)**

- 단축키: `Ctrl + Alt + T`
- 또는 앱 목록(Show Applications)에서 "Terminal" 검색 후 실행

## 2. 꼭 알아야 할 기본 명령어

아래 표의 명령어만 익혀도 대부분의 기본 작업을 할 수 있어요. 첫 번째 열이 실제로 입력하는 명령어입니다.

### ① 이동 & 탐색

| 명령어 | 설명 | 예시 |
|--------|------|------|
| `pwd` | 현재 내가 있는 폴더의 경로 출력 | `pwd` |
| `ls` | 현재 폴더의 파일/폴더 목록 보기 | `ls -al` |
| `cd` | 다른 폴더로 이동 | `cd Documents` |
| `cd ..` | 한 단계 위(상위) 폴더로 이동 | `cd ..` |
| `cd ~` | 홈 폴더로 바로 이동 | `cd ~` |
| `clear` | 터미널 화면 깨끗이 정리 | `clear` |

### ② 파일 & 폴더 다루기

| 명령어 | 설명 | 예시 |
|--------|------|------|
| `mkdir` | 새 폴더 만들기 | `mkdir project` |
| `touch` | 빈 파일 만들기 | `touch a.txt` |
| `cp` | 파일 복사 | `cp a.txt b.txt` |
| `mv` | 파일 이동 / 이름 바꾸기 | `mv a.txt sub/` |
| `rm` | 파일 삭제 (주의: 복구 안 됨) | `rm a.txt` |
| `rm -r` | 폴더째 삭제 (주의!) | `rm -r folder` |

### ③ 파일 내용 보기

| 명령어 | 설명 | 예시 |
|--------|------|------|
| `cat` | 파일 내용 전체 출력 | `cat a.txt` |
| `less` | 긴 파일 넘겨보기 (q로 종료) | `less a.txt` |
| `head` | 파일 앞부분 몇 줄만 | `head -n 20 a.txt` |
| `tail` | 파일 뒷부분 몇 줄만 | `tail -n 20 a.txt` |
| `tail -f` | 실시간 로그 지켜보기 | `tail -f log.txt` |

### ④ 검색

| 명령어 | 설명 | 예시 |
|--------|------|------|
| `grep` | 파일 안에서 특정 글자 찾기 | `grep "hello" a.txt` |
| `find` | 이름/조건으로 파일 찾기 | `find . -name "*.py"` |
| `history` | 내가 쳤던 명령어 기록 보기 | `history` |

### ⑤ 시스템 & 프로세스

| 명령어 | 설명 | 예시 |
|--------|------|------|
| `top` | 실행 중인 프로그램 실시간 모니터 | `top` |
| `ps` | 프로세스(실행 중 작업) 목록 | `ps aux` |
| `kill` | 특정 프로세스 종료 | `kill 1234` |
| `df -h` | 디스크 남은 용량 확인 | `df -h` |
| `du -sh` | 폴더 용량 확인 | `du -sh folder` |

### ⑥ 네트워크 & 기타

| 명령어 | 설명 | 예시 |
|--------|------|------|
| `ping` | 네트워크 연결 상태 확인 | `ping google.com` |
| `curl` | URL로 요청 보내기/다운로드 | `curl https://example.com` |
| `ssh` | 원격 서버에 접속 | `ssh user@host` |
| `man` | 명령어 사용법(설명서) 보기 | `man ls` |
| `sudo` | 관리자 권한으로 실행 | `sudo apt update` |

## 3. 패키지 매니저 (프로그램 설치 도구)

`git`, `node` 같은 새 프로그램을 명령어로 설치할 때 '패키지 매니저'를 씁니다. 운영체제마다 기본 매니저가 조금 달라요.

**macOS — Homebrew**

Homebrew는 macOS에서 가장 많이 쓰는 패키지 매니저예요. 아래 한 줄을 터미널에 붙여넣어 설치합니다:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

설치 후에는 예를 들어 `brew install git` 처럼 프로그램을 설치해요.

**Linux — apt (Ubuntu/Debian 계열)**

우분투/데비안 계열은 `apt`가 기본으로 들어 있어 따로 설치할 필요가 없어요. 프로그램은 이렇게 설치합니다:

```bash
sudo apt update && sudo apt install git
```

Fedora/RHEL 계열은 `dnf`, Arch 계열은 `pacman` 을 사용해요.

## 4. 초보자 꿀팁

- **Tab 키** — 파일/폴더 이름 자동완성 (오타 방지 + 속도 UP)
- **↑ / ↓ 방향키** — 이전에 입력한 명령어 다시 불러오기
- **Ctrl + C** — 실행 중인 명령 강제 중단
- 헷갈리면 `man <명령어>` 또는 `<명령어> --help` 로 사용법을 확인하세요.

> ⚠️ 주의: `rm`은 휴지통 없이 즉시 삭제돼요. 특히 `rm -rf`는 되돌릴 수 없으니 경로를 꼭 확인하고 쓰세요.
{: .prompt-warning }

---

> 이 글은 수업 자료(Notion "터미널 명령어 모음")를 정리한 학습 기록입니다.
{: .prompt-tip }
