<#
.SYNOPSIS
    자동매매 일지 카테고리에 새 글을 만듭니다.

.DESCRIPTION
    회차 번호는 _posts 안의 기존 trading-log 글을 세어 자동으로 매깁니다.
    본문의 숫자는 반드시 `python mt5_cutover.py report` 출력에서 옮겨 적으세요 —
    기억으로 쓰면 이 일지의 목적이 사라집니다.

.EXAMPLE
    .\tools\new-trading-log.ps1 -Title "새 규칙이 처음 발동했다"

.EXAMPLE
    .\tools\new-trading-log.ps1 -Title "3개월 결산" -Slug "quarter-review" -Date 2027-02-06
#>
param(
    [Parameter(Mandatory = $true)]
    [string]$Title,

    [string]$Slug,

    [string]$Date
)

$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$postsDir = Join-Path $repoRoot "_posts"
$template = Join-Path $repoRoot "templates/trading-log-template.md"

if (-not (Test-Path $template)) { throw "템플릿이 없습니다: $template" }

if ([string]::IsNullOrWhiteSpace($Date)) { $dt = Get-Date }
else { $dt = [datetime]::ParseExact($Date, "yyyy-MM-dd", $null) }
$dateStr = $dt.ToString("yyyy-MM-dd")

# 다음 회차 = 기존 trading-log 글 수 + 1
$existing = @(Get-ChildItem -Path $postsDir -Filter "*trading-log-*.md" -ErrorAction SilentlyContinue)
$num = "{0:D2}" -f ($existing.Count + 1)
$numPlain = [int]$num

if ([string]::IsNullOrWhiteSpace($Slug)) {
    $Slug = ($Title -replace "[^\w가-힣]+", "-").Trim("-")
}

$fileName = "$dateStr-trading-log-$num-$Slug.md"
$outPath  = Join-Path $postsDir $fileName
if (Test-Path $outPath) { throw "이미 있습니다: $outPath" }

$body = Get-Content -Path $template -Raw -Encoding UTF8
$body = $body.Replace("자동매매 일지 #N — 한 줄 제목", "자동매매 일지 #$numPlain — $Title")
$body = $body.Replace("2026-01-01 19:00:00", "$dateStr 19:00:00")
# permalink 는 회차마다 달라야 한다. 주간시황 글이 슬러그가 매주 같아서
# 기본 permalink 가 충돌했던 전례가 있다.
$body = $body.Replace("/posts/trading-log-NN-slug/", "/posts/trading-log-$num-$Slug/")

[System.IO.File]::WriteAllText($outPath, $body, (New-Object System.Text.UTF8Encoding $false))

Write-Host "만들었습니다: _posts/$fileName"
Write-Host ""
Write-Host "다음 할 일:" -ForegroundColor Cyan
Write-Host "  1. cd C:/Users/ssei8/.config/coding-convention/worktrees/larry-signals/mt5link"
Write-Host "  2. python mt5_cutover.py report     <- 숫자를 여기서 가져온다"
Write-Host "  3. 글의 '이번에 틀린 것' 칸을 반드시 채운다"
