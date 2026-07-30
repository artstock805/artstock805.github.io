---
title: "oh-my! — Oh My Zsh에서 AI 코딩 에이전트까지, oh-my 패밀리 정리"
date: 2026-07-18 10:00:00 +0900
categories: [교육, 아이펠]
tags: [OhMyZsh, oh-my-openagent, oh-my-claudecode, 개발도구, 학습기록]
---

> "oh-my-" 프로젝트는 2009년 **Oh My Zsh**에서 시작된 오픈소스 네이밍 전통으로, "설치만 하면 도구가 즉시 강력해지는" 배터리 포함(batteries-included) 설정·확장 프레임워크를 뜻합니다. 이 전통은 오늘날 AI 코딩 에이전트 영역으로 이어져 `oh-my-openagent`, `oh-my-claudecode`가 계보를 잇고 있습니다. (아래 정보는 2026년 7월 14일 기준)
{: .prompt-info }

## 1. Oh My Zsh 🐚

터미널(zsh) 설정 관리의 사실상 표준 프레임워크

| 항목 | 내용 |
|------|------|
| 원작자 | Robby Russell (@robbyrussell) — 미국 포틀랜드의 Ruby on Rails 에이전시 Planet Argon 창업자 |
| 공개 | 2009년 8월 |
| GitHub 스타 | 약 188,700개 (GitHub 전체 최상위권) |
| 라이선스 | MIT |
| 대상 | zsh 셸 사용자 (macOS, Linux, WSL2 등) |

### 소개

커뮤니티 주도(기여자 2,500명 이상)로 운영되는 zsh 설정 프레임워크입니다. git, docker, node, python 등 **300개 이상의 플러그인**과 **140개 이상의 테마**, 자동 업데이트 도구를 제공합니다. "oh-my" 계열 프로젝트들의 원조이며, 이후 oh-my-bash, oh-my-fish, oh-my-posh 등 수많은 프로젝트가 이 이름을 따랐습니다.

### 설치 방법

사전 준비: zsh(5.0.8+ 권장), curl 또는 wget, git. 아래 한 줄이면 끝납니다. (공식 저장소 표준 설치 명령)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

설치 후 `~/.zshrc`에서 플러그인과 테마를 설정합니다. (예시)

```bash
# ~/.zshrc
ZSH_THEME="robbyrussell"
plugins=(git docker node python)
```

업데이트는 `omz update`, 제거는 `uninstall_oh_my_zsh` 명령 하나면 됩니다.

### 장점

- **방대한 생태계** — 플러그인 300+, 테마 140+가 기본 내장되어 별도 검색·설치 없이 바로 사용 가능
- **생산성** — git 축약 별칭, 자동완성, 디렉터리 이동 단축 등 매 키 입력마다 체감되는 편의 기능
- 17년간 검증된 안정성과 활발한 커뮤니티(Discord, 위키, FAQ)
- `custom/` 디렉터리로 자신만의 플러그인·테마를 쉽게 추가하는 확장 구조

### 링크

- GitHub: [github.com/ohmyzsh/ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
- 공식 사이트: [ohmyz.sh](https://ohmyz.sh)

## 2. oh-my-openagent (구 oh-my-opencode, 약칭 omo) 🪨

OpenCode·Codex를 "스테로이드 맞은 코딩 에이전트"로 바꿔주는 에이전트 하네스

| 항목 | 내용 |
|------|------|
| 원작자 | 김연규 YeonGyu Kim (@code-yeongyu) — 한국 개발자, Sisyphus Labs 설립 |
| 이름 변천 | oh-my-opencode → oh-my-openagent (OpenCode에 이어 Codex까지 지원 확장) |
| GitHub 스타 | 약 65,700개 |
| 라이선스 | SUL-1.0 (Sisyphus User License) |
| 대상 | OpenCode(sst/opencode) 및 Codex CLI 사용자 |

### 소개

오픈소스 코딩 에이전트 OpenCode용 플러그인으로 시작해, 복잡한 코드베이스를 위한 "에이전트 하네스"로 발전한 프로젝트입니다. 핵심 콘셉트는 그리스 신화의 시시포스처럼 일이 끝날 때까지 바위를 굴리는 메인 에이전트 **Sisyphus**입니다. Oracle(설계·디버깅, GPT), Frontend Engineer(Gemini), Librarian(문서·코드 검색), Explore(고속 코드베이스 탐색) 등 목적별로 다른 모델을 배치하는 **멀티모델 오케스트레이션**이 특징입니다.

프롬프트에 매직 키워드 **"ultrawork"**(또는 `ulw`)만 넣으면 병렬 에이전트, 백그라운드 작업, 심층 탐색, 완료까지의 집요한 실행이 자동으로 켜집니다. 국내외에서 큰 화제가 되었고, oh-my-claudecode를 비롯한 수많은 파생 프로젝트에 영감을 준 작품입니다.

### 설치 방법

공식 권장 방식이 독특합니다. "사람은 실수하니, 에이전트에게 설치를 시켜라" — 사용 중인 LLM 에이전트에 설치 프롬프트를 붙여넣는 방식입니다.

```text
Install and configure oh-my-opencode by following the instructions here:
https://raw.githubusercontent.com/code-yeongyu/oh-my-opencode/refs/heads/master/docs/guide/installation.md
```

수동으로는 OpenCode 설정 파일(`~/.config/opencode/opencode.json`)의 `plugin` 배열에 패키지를 추가합니다 (npm: `oh-my-opencode@latest`).

### 장점

- **멀티모델 오케스트레이션** — Claude·GPT·Gemini·Grok 구독을 모두 활용해 작업 성격별 최적 모델에 위임
- **Todo Continuation Enforcer** — 에이전트가 중간에 포기하면 강제로 재개시켜 작업을 끝까지 완수
- **LSP·AST-grep 내장** — 정규식이 아닌 언어 서버 기반의 정밀하고 안전한 리팩터링
- **Claude Code 호환 레이어** — 기존 Claude Code의 커맨드·에이전트·스킬·훅·MCP 자산 재사용 가능
- 큐레이션된 MCP 내장(Exa 웹검색, Context7 공식문서, grep.app GitHub 코드 검색) + Comment Checker로 AI 티 나는 주석 방지

### 주의사항

- `ohmyopencode.com`은 공식과 무관한 **사칭 유료 사이트**입니다. 공식 배포는 GitHub Releases뿐이며 프로젝트 자체는 무료 오픈소스입니다.
- 2026년 1월부터 Anthropic이 서드파티 OAuth 접근을 제한하여, Claude 구독을 OpenCode에서 쓰는 것은 기술적으로 가능해도 ToS 문제로 공식적으로 권장되지 않습니다.

### 링크

- GitHub: [github.com/code-yeongyu/oh-my-openagent](https://github.com/code-yeongyu/oh-my-openagent)
- Sisyphus Labs(제품화 버전 대기 명단): [sisyphuslabs.ai](https://sisyphuslabs.ai)

## 3. oh-my-claudecode (약칭 OMC) 🤖

Claude Code를 위한 멀티 에이전트 오케스트레이션 — "Zero learning curve"

| 항목 | 내용 |
|------|------|
| 원작자 | 허예찬 Yeachan Heo (@Yeachan-Heo) — 한국 개발자 (Creator & Lead) |
| GitHub 스타 | 약 36,100개 |
| 라이선스 | MIT |
| 대상 | Claude Code CLI 사용자 (Claude Max/Pro 구독 또는 API 키 필요) |
| 비고 | npm 패키지명은 `oh-my-claude-sisyphus` — oh-my-opencode에서 영감을 받은 흔적 |

### 소개

"Claude Code를 배우지 말고 그냥 OMC를 써라"를 모토로 하는 Claude Code용 멀티 에이전트 오케스트레이션 플러그인입니다. **19개의 전문 에이전트**(아키텍처·리서치·디자인·테스트·데이터사이언스 등)가 작업을 분담하고, 단순 작업은 Haiku·복잡한 추론은 Opus로 보내는 **스마트 모델 라우팅**으로 토큰을 30~50% 절약합니다. Team(협업 파이프라인, 권장), Autopilot(자율 실행), Ralph(완료까지 재시도), Ultrawork(최대 병렬), Deep Interview(소크라테스식 요구사항 정리) 등 다양한 실행 모드를 제공합니다.

### 설치 방법

Claude Code 안에서 슬래시 커맨드를 한 줄씩 차례로 입력합니다(플러그인 마켓플레이스 방식, 권장).

```bash
/plugin marketplace add https://github.com/Yeachan-Heo/oh-my-claudecode
/plugin install oh-my-claudecode
/setup
```

npm CLI 경로를 선호하면 터미널에서:

```bash
npm i -g oh-my-claude-sisyphus@latest
omc setup
```

설치 후에는 예를 들어 `/autopilot "build a REST API for managing tasks"` 한 줄이면 나머지는 자동입니다. Team 모드 등 일부 기능은 tmux가 필요합니다(macOS: `brew install tmux`).

### 장점

- **제로 러닝 커브** — 설정 없이 바로 동작하며, 명령 암기 대신 자연어로 지시(`ralph`, `ulw` 같은 매직 키워드도 지원)
- **집요한 실행** — 검증 완료될 때까지 포기하지 않는 Ralph 모드, 작업 누락 없는 verify/fix 루프
- **비용 최적화** — 스마트 모델 라우팅으로 토큰 30~50% 절감 + 세션별 비용·토큰 분석 기능
- **스킬 학습(`/skillify`)** — 세션에서 얻은 문제 해결 패턴을 재사용 가능한 스킬 파일로 추출해 자동 재주입
- **가시성** — HUD 상태바로 오케스트레이션 진행 상황을 실시간 확인, Telegram·Discord·Slack 알림 연동
- **멀티 AI 확장** — Codex·Gemini CLI를 tmux 워커로 불러 교차 검증(`omc team 2:codex "..."`) 가능 (선택)

### 링크

- GitHub: [github.com/Yeachan-Heo/oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode)
- 공식 문서: [yeachan-heo.github.io/oh-my-claudecode-website](https://yeachan-heo.github.io/oh-my-claudecode-website)
- Codex 사용자용 자매 프로젝트: [github.com/Yeachan-Heo/oh-my-codex](https://github.com/Yeachan-Heo/oh-my-codex)

## 한눈 비교

| 프로젝트 | 원작자 | 대상 도구 | 핵심 가치 | 스타 / 라이선스 |
|----------|--------|-----------|-----------|-----------------|
| Oh My Zsh (2009) | Robby Russell | zsh 셸 | 터미널 설정·생산성 프레임워크 | 188k+ / MIT |
| oh-my-openagent | 김연규 (@code-yeongyu) | OpenCode·Codex | 멀티모델 에이전트 하네스 (Sisyphus, ultrawork) | 65k+ / SUL-1.0 |
| oh-my-claudecode | 허예찬 (@Yeachan-Heo) | Claude Code | 멀티 에이전트 오케스트레이션 (Team, Autopilot, Ralph) | 36k+ / MIT |

> 재미있는 점: 두 AI 프로젝트 모두 **한국 개발자**의 작품이며, 둘 다 "시시포스" 콘셉트를 공유합니다(OMC의 npm 패키지명도 `oh-my-claude-sisyphus`). oh-my-claudecode는 README에서 oh-my-opencode를 공식적으로 영감의 원천으로 밝히고 있습니다.
{: .prompt-tip }

## 더 살펴볼 만한 "oh-my" 패밀리

**고전 계보 (셸·프롬프트)**

- `oh-my-bash` — bash 사용자를 위한 Oh My Zsh 이식 버전
- `oh-my-fish` — fish 셸용 플러그인·테마 프레임워크
- `oh-my-posh` — 셸 종류를 가리지 않는 크로스플랫폼 프롬프트 테마 엔진(PowerShell 기원)

**AI 에이전트 계보 (omo·OMC에서 파생)**

- `oh-my-codex` — OpenAI Codex CLI용 OMC 경험 (Yeachan Heo)
- `oh-my-droid` — Factory AI Droid CLI용, OMC 기반 (32개 드로이드, autopilot·ultrawork 모드)
- `oh-my-cursor` — Cursor IDE용 멀티 에이전트 오케스트레이션 룰
- `oh-my-grok` — Grok Build CLI용 생산성 플러그인 (Ralph·Ultrawork 루프 이식)
- `oh-my-warp` — Warp 터미널 에이전트용 확장 툴킷
- 그 밖에 `oh-my-hermes`, `oh-my-openagent-copilot`(GitHub Copilot CLI용), `omo-olympus`(그리스 신 페르소나) 등 생태계가 빠르게 확장 중

---

> 출처: 각 프로젝트 GitHub README 및 GitHub API (2026-07-14 조회). 이 글은 수업 자료(Notion "oh-my!")를 학습용으로 정리한 기록입니다.
{: .prompt-info }
