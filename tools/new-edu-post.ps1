<#
.SYNOPSIS
    교육 카테고리에 오늘 날짜(또는 지정 날짜)로 새 글을 만듭니다.

.EXAMPLE
    .\tools\new-edu-post.ps1 -Title "선형대수 기초"
    → _posts/2026-07-30-선형대수-기초.md 생성 (categories: [교육, 아이펠])

.EXAMPLE
    .\tools\new-edu-post.ps1 -Title "CNN 실습" -Sub "딥러닝" -Date 2026-08-01
    → _posts/2026-08-01-CNN-실습.md 생성 (categories: [교육, 딥러닝])
#>
param(
    [Parameter(Mandatory = $true)]
    [string]$Title,

    [string]$Sub = "아이펠",

    [string]$Date
)

$ErrorActionPreference = "Stop"

# 스크립트 위치 기준으로 레포 루트 계산 (tools\ 상위 폴더)
$repoRoot = Split-Path -Parent $PSScriptRoot
$postsDir = Join-Path $repoRoot "_posts"

# 날짜 처리: 미지정이면 오늘
if ([string]::IsNullOrWhiteSpace($Date)) {
    $dt = Get-Date
} else {
    $dt = [datetime]::Parse($Date)
}
$dateStr = $dt.ToString("yyyy-MM-dd")
$stamp   = $dt.ToString("yyyy-MM-dd HH:mm:ss") + " +0900"

# 파일명용 슬러그: 공백 → 하이픈, 파일명 금지문자 제거
$slug = $Title.Trim() -replace '\s+', '-'
$slug = $slug -replace '[\\/:*?"<>|#]', ''

$fileName = "$dateStr-$slug.md"
$filePath = Join-Path $postsDir $fileName

if (Test-Path $filePath) {
    Write-Error "이미 같은 이름의 글이 있습니다: $fileName"
    return
}

$content = @"
---
title: $Title
date: $stamp
categories: [교육, $Sub]
tags: [학습기록]
---

> 오늘 배운 내용을 한 줄로 요약해 보세요.

## 오늘 배운 것

-

## 실습

``````python
# 실습 코드를 여기에
``````

## 막혔던 부분 & 해결

- 문제:
- 해결:

## 오늘의 회고

-

---

> 학습 기록용 글입니다.
{: .prompt-tip }
"@

# UTF-8 (BOM 없이)로 저장 — Jekyll이 한글을 올바르게 읽도록
$utf8NoBom = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText($filePath, $content, $utf8NoBom)

Write-Host "생성 완료: _posts\$fileName" -ForegroundColor Green
Write-Host "카테고리: [교육, $Sub]"
