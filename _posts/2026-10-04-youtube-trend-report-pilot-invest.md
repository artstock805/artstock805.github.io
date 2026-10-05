---
title: "유튜브 트렌드 리포트 — 재테크/투자 (2026-10-04)"
date: 2026-10-04 09:00:00 +0900
categories: [트레이딩, 유튜브트렌드]
tags: [유튜브, 트렌드분석, 재테크, 투자, 자동화]
permalink: /posts/youtube-trend-report-pilot-invest-2026-10-04/
---

> 유튜브 공개 데이터를 매일 수집·분석해 발행하는 정기 리포트입니다.
> 수집부터 지표 계산, 인사이트 작성, 수치 검증까지 파이프라인이 처리합니다.
{: .prompt-info }

이 글은 **주 1회 공개하는 발췌본**입니다. 정기 구독본에 들어가는
콘텐츠 제안·촬영 대본과 인사이트 전문, 급상승 전체 순위는 제외했습니다.
{: .prompt-warning }

{% raw %}
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,600;9..144,700&family=Public+Sans:wght@400;500;600&family=IBM+Plex+Mono:wght@400;500&display=swap">
<style>
.trend-report :where(h1,h2,h3,h4,p,ul,ol,li,table,thead,tbody,tr,th,td,div,span,a,section,header,footer,strong,em) {
  background: none; border: 0; box-shadow: none; color: inherit;
  margin: 0; padding: 0; font: inherit; line-height: inherit;
  text-align: left; text-decoration: none; letter-spacing: normal;
}
.trend-report :where(table) { border-collapse: collapse; border-spacing: 0; }
.trend-report :where(ul,ol) { list-style: none; }
.trend-report :where(a):hover { text-decoration: none; }
/* Chirpy 는 표를 스크롤 박스로 만들려고 display 를 바꾸는 판본이 있다.
   그게 리포트 표에 걸리면 열이 무너진다. 표 구조를 되돌려 놓는다. */
.trend-report :where(table) { display: table; }
.trend-report :where(thead) { display: table-header-group; }
.trend-report :where(tbody) { display: table-row-group; }
.trend-report :where(tr) { display: table-row; }
.trend-report :where(th, td) { display: table-cell; }
.trend-report {
  --bg: #eff1f3;
  --surface: #ffffff;
  --surface-2: #f7f8fa;
  --ink: #141a21;
  --muted: #5a646f;
  --line: #dce0e5;
  --accent: #0b6e5f;
  --accent-soft: #e2f0ed;
  --heat-1: #9aa5b1;
  --heat-2: #4d94a8;
  --heat-3: #d68d24;
  --heat-4: #cc4b2c;
  --up: #16794f;
  --down: #b23c2a;
  --shadow: 0 1px 2px rgba(20, 26, 33, .06), 0 8px 24px rgba(20, 26, 33, .05);
}
@media (prefers-color-scheme: dark) {
html:not([data-mode]) .trend-report {
    --bg: #101317;
    --surface: #181c22;
    --surface-2: #1e232a;
    --ink: #e8ecf1;
    --muted: #94a0ad;
    --line: #262c34;
    --accent: #2dd4a7;
    --accent-soft: #14312b;
    --heat-1: #6b7682;
    --heat-2: #5aa9bd;
    --heat-3: #e0a344;
    --heat-4: #e56b4a;
    --up: #3ec489;
    --down: #e8705a;
    --shadow: 0 1px 2px rgba(0, 0, 0, .4), 0 8px 24px rgba(0, 0, 0, .3);
  }
}
html[data-mode="dark"] .trend-report {
  --bg: #101317;
  --surface: #181c22;
  --surface-2: #1e232a;
  --ink: #e8ecf1;
  --muted: #94a0ad;
  --line: #262c34;
  --accent: #2dd4a7;
  --accent-soft: #14312b;
  --heat-1: #6b7682;
  --heat-2: #5aa9bd;
  --heat-3: #e0a344;
  --heat-4: #e56b4a;
  --up: #3ec489;
  --down: #e8705a;
  --shadow: 0 1px 2px rgba(0, 0, 0, .4), 0 8px 24px rgba(0, 0, 0, .3);
}
.trend-report, .trend-report * { box-sizing: border-box; }
.trend-report {
  margin: 0;
  background: var(--bg);
  color: var(--ink);
  font-family: "Public Sans", -apple-system, "Segoe UI", "Malgun Gothic", sans-serif;
  font-size: 15px;
  line-height: 1.6;
  -webkit-font-smoothing: antialiased;
}
.trend-report .wrap { max-width: 900px; margin: 0 auto; padding: 32px 20px 64px; display: flex; flex-direction: column; gap: 28px; }
.trend-report .masthead { border-bottom: 2px solid var(--ink); padding-bottom: 16px; display: flex; flex-direction: column; gap: 10px; }
.trend-report .masthead .kicker {
  font-family: "IBM Plex Mono", ui-monospace, monospace;
  font-size: 11px; letter-spacing: .14em; text-transform: uppercase; color: var(--accent);
}
.trend-report .masthead h1 {
  font-family: Fraunces, Georgia, "Nanum Myeongjo", serif;
  font-weight: 700; font-size: clamp(28px, 5vw, 40px); line-height: 1.1; margin: 0;
  text-wrap: balance; letter-spacing: -.01em;
}
.trend-report .masthead .meta {
  display: flex; flex-wrap: wrap; gap: 6px 16px;
  font-family: "IBM Plex Mono", ui-monospace, monospace; font-size: 12px; color: var(--muted);
  font-variant-numeric: tabular-nums;
}
.trend-report h2 {
  font-family: Fraunces, Georgia, "Nanum Myeongjo", serif;
  font-size: 19px; font-weight: 600; margin: 0 0 12px; letter-spacing: -.01em;
}
.trend-report section { display: block; }
.trend-report .tiles { display: grid; grid-template-columns: repeat(auto-fit, minmax(150px, 1fr)); gap: 12px; }
.trend-report .tile {
  background: var(--surface); border: 1px solid var(--line); border-radius: 10px;
  padding: 14px 16px; display: flex; flex-direction: column; gap: 4px; box-shadow: var(--shadow);
}
.trend-report .tile .label { font-size: 11px; letter-spacing: .08em; text-transform: uppercase; color: var(--muted); }
.trend-report .tile .value {
  font-family: "IBM Plex Mono", ui-monospace, monospace;
  font-size: 25px; font-weight: 500; font-variant-numeric: tabular-nums; line-height: 1.15;
}
.trend-report .tile .unit { font-size: 13px; color: var(--muted); font-family: "Public Sans", sans-serif; }
.trend-report .insight {
  background: var(--surface); border: 1px solid var(--line); border-left: 3px solid var(--accent);
  border-radius: 10px; padding: 20px 22px; box-shadow: var(--shadow);
}
.trend-report .insight .headline {
  font-family: Fraunces, Georgia, "Nanum Myeongjo", serif;
  font-size: 21px; font-weight: 600; line-height: 1.35; margin: 0 0 14px; text-wrap: balance;
}
.trend-report .insight ul { margin: 0; padding-left: 18px; display: flex; flex-direction: column; gap: 8px; }
.trend-report .insight li::marker { color: var(--accent); }
.trend-report .watchout {
  margin-top: 16px; padding-top: 14px; border-top: 1px dashed var(--line);
  font-size: 14px; color: var(--muted);
}
.trend-report .watchout strong { color: var(--ink); font-weight: 600; }
.trend-report .ideas { display: grid; grid-template-columns: repeat(auto-fit, minmax(220px, 1fr)); gap: 12px; }
.trend-report .idea {
  background: var(--surface); border: 1px solid var(--line); border-radius: 10px;
  padding: 16px; display: flex; flex-direction: column; gap: 8px; box-shadow: var(--shadow);
}
.trend-report .idea .fmt {
  align-self: flex-start; font-family: "IBM Plex Mono", monospace; font-size: 10px;
  letter-spacing: .1em; text-transform: uppercase; padding: 3px 8px; border-radius: 999px;
  background: var(--accent-soft); color: var(--accent);
}
.trend-report .idea .t { font-weight: 600; line-height: 1.4; }
.trend-report .idea .w { font-size: 13.5px; color: var(--muted); }
.trend-report .scroll { overflow-x: auto; border: 1px solid var(--line); border-radius: 10px; background: var(--surface); box-shadow: var(--shadow); }
.trend-report table { width: 100%; border-collapse: collapse; font-size: 14px; min-width: 620px; }
.trend-report th, .trend-report td { padding: 11px 12px; text-align: left; border-bottom: 1px solid var(--line); vertical-align: top; }
.trend-report th {
  font-size: 10.5px; letter-spacing: .1em; text-transform: uppercase; color: var(--muted);
  font-weight: 600; background: var(--surface-2); position: sticky; top: 0;
}
.trend-report tbody tr:last-child td { border-bottom: 0; }
.trend-report td.num { font-family: "IBM Plex Mono", monospace; font-variant-numeric: tabular-nums; text-align: right; white-space: nowrap; }
.trend-report td.rank { font-family: "IBM Plex Mono", monospace; color: var(--muted); width: 34px; }
.trend-report .vt a { color: var(--ink); text-decoration: none; font-weight: 500; line-height: 1.4; }
.trend-report .vt a:hover, .trend-report .vt a:focus-visible { color: var(--accent); text-decoration: underline; }
.trend-report .vt .sub { font-size: 12.5px; color: var(--muted); margin-top: 3px; display: flex; flex-wrap: wrap; gap: 4px 10px; }
.trend-report .short { font-family: "IBM Plex Mono", monospace; font-size: 9.5px; letter-spacing: .08em; padding: 1px 5px; border-radius: 3px; border: 1px solid var(--line); color: var(--muted); }
.trend-report .heat { display: flex; align-items: center; gap: 8px; justify-content: flex-end; }
.trend-report .heat .bar { width: 46px; height: 5px; border-radius: 3px; background: var(--line); overflow: hidden; flex: none; }
.trend-report .heat .bar span { display: block; height: 100%; border-radius: 3px; }
.trend-report .b1 { background: var(--heat-1); }
.trend-report .b2 { background: var(--heat-2); }
.trend-report .b3 { background: var(--heat-3); }
.trend-report .b4 { background: var(--heat-4); }
.trend-report .kw { display: flex; flex-direction: column; gap: 9px; }
.trend-report .kw .row { display: grid; grid-template-columns: minmax(80px, 140px) 1fr auto; align-items: center; gap: 12px; }
.trend-report .kw .name { font-weight: 500; }
.trend-report .kw .track { height: 8px; background: var(--surface-2); border: 1px solid var(--line); border-radius: 4px; overflow: hidden; }
.trend-report .kw .fill { height: 100%; background: var(--accent); border-radius: 4px; }
.trend-report .kw .val { font-family: "IBM Plex Mono", monospace; font-size: 13px; color: var(--muted); font-variant-numeric: tabular-nums; }
.trend-report .comp { display: grid; grid-template-columns: repeat(auto-fit, minmax(230px, 1fr)); gap: 12px; }
.trend-report .comp .c { background: var(--surface); border: 1px solid var(--line); border-radius: 10px; padding: 14px 16px; box-shadow: var(--shadow); }
.trend-report .comp .n { font-weight: 600; margin-bottom: 8px; }
.trend-report .comp .st { display: flex; justify-content: space-between; font-size: 13.5px; padding: 2px 0; }
.trend-report .comp .st span:last-child { font-family: "IBM Plex Mono", monospace; font-variant-numeric: tabular-nums; }
.trend-report .comp .st .faint-note { display: block; font-family: "Public Sans", sans-serif; font-size: 11px; color: var(--muted); text-align: right; margin-top: 1px; }
.trend-report .up { color: var(--up); }
.trend-report .down { color: var(--down); }
.trend-report .scripts { display: flex; flex-direction: column; gap: 10px; }
.trend-report .sc { background: var(--surface); border: 1px solid var(--line); border-radius: 10px; box-shadow: var(--shadow); }
.trend-report .sc > summary {
  padding: 14px 16px; cursor: pointer; display: flex; flex-wrap: wrap; align-items: center; gap: 8px 10px;
  list-style: none; font-weight: 600; line-height: 1.4;
}
.trend-report .sc > summary::-webkit-details-marker { display: none; }
.trend-report .sc > summary::after { content: '펼치기'; margin-left: auto; font-size: 11px; font-weight: 500; color: var(--muted); font-family: "IBM Plex Mono", monospace; }
.trend-report .sc[open] > summary::after { content: '접기'; }
.trend-report .sc[open] > summary { border-bottom: 1px solid var(--line); }
.trend-report .sc .body { padding: 14px 16px 16px; display: flex; flex-direction: column; gap: 14px; }
.trend-report .sc .lbl { font-size: 10.5px; letter-spacing: .1em; text-transform: uppercase; color: var(--muted); margin-bottom: 5px; }
.trend-report .sc .hook { font-family: Fraunces, Georgia, "Nanum Myeongjo", serif; font-size: 17px; line-height: 1.45; }
.trend-report .sc .up { color: var(--ink); font-weight: 500; }
.trend-report .beats { display: flex; flex-direction: column; gap: 0; }
.trend-report .beat { display: grid; grid-template-columns: 96px 1fr; gap: 12px; padding: 9px 0; border-top: 1px solid var(--line); }
.trend-report .beat:first-child { border-top: 0; }
.trend-report .beat .at { font-family: "IBM Plex Mono", monospace; font-size: 12px; color: var(--accent); font-variant-numeric: tabular-nums; padding-top: 2px; }
.trend-report .beat .say { line-height: 1.55; }
.trend-report .beat .bn { font-size: 12.5px; color: var(--muted); margin-top: 4px; }
.trend-report .sc .src { font-size: 12.5px; color: var(--muted); border-top: 1px dashed var(--line); padding-top: 10px; }
.trend-report .sc .src ul { margin: 5px 0 0; padding-left: 16px; }
@media (max-width: 520px) {
.trend-report .beat { grid-template-columns: 1fr; gap: 2px; }
}
.trend-report .note {
  background: var(--surface-2); border: 1px dashed var(--line); border-radius: 8px;
  padding: 12px 14px; font-size: 13px; color: var(--muted);
}
.trend-report .note ul { margin: 6px 0 0; padding-left: 18px; }
.trend-report footer {
  border-top: 1px solid var(--line); padding-top: 16px; font-size: 12px; color: var(--muted);
  display: flex; flex-wrap: wrap; gap: 4px 18px;
  font-family: "IBM Plex Mono", monospace; font-variant-numeric: tabular-nums;
}
.trend-report a:focus-visible, .trend-report :focus-visible { outline: 2px solid var(--accent); outline-offset: 2px; }
@media (prefers-reduced-motion: reduce) {
.trend-report, .trend-report * { transition: none !important; animation: none !important; }
}
@media (max-width: 520px) {
.trend-report .wrap { padding: 22px 14px 48px; }
.trend-report .kw .row { grid-template-columns: minmax(64px, 96px) 1fr auto; }
}
.trend-report .ad-slot { border: 1px dashed var(--line); border-radius: 10px; padding: 12px 14px 14px; background: var(--surface-2); }
.trend-report .ad-label {
  font-family: "IBM Plex Mono", monospace; font-size: 10px; letter-spacing: .12em;
  text-transform: uppercase; color: var(--muted); margin-bottom: 8px;
}
.trend-report .ad-link { display: block; text-decoration: none; color: inherit; }
.trend-report .ad-img { display: block; width: 100%; height: auto; border-radius: 6px; }
.trend-report .ad-card {
  background: var(--surface); border: 1px solid var(--line); border-left: 3px solid var(--ad-accent);
  border-radius: 8px; padding: 14px 16px; display: flex; flex-direction: column; gap: 6px;
}
.trend-report .ad-h { font-weight: 600; font-size: 15.5px; line-height: 1.4; }
.trend-report .ad-b { font-size: 13.5px; color: var(--muted); line-height: 1.5; }
.trend-report .ad-cta {
  align-self: flex-start; margin-top: 4px; font-size: 12.5px; font-weight: 600;
  color: var(--ad-accent); border-bottom: 1px solid currentColor; padding-bottom: 1px;
}
.trend-report .ad-link:hover .ad-cta, .trend-report .ad-link:focus-visible .ad-cta { opacity: .75; }
</style>

<div class="trend-report">
<div class="wrap">
  <header class="masthead">
    <div class="kicker">YouTube Trend Report</div>
    <h1>파일럿 · 재테크/투자</h1>
    <div class="meta">
      <span>2026-10-04</span>
      <span>최근 7일 기준</span>
      <span>KR</span>
      <span>키워드 미국주식 · ETF · 배당주 · 금리</span>
    </div>
  </header>

<section><div class="tiles">

      <div class="tile">
        <div class="label">분석한 영상</div>
        <div class="value">187<span class="unit"> 건</span></div>
      </div>

      <div class="tile">
        <div class="label">숏폼 비중</div>
        <div class="value">11<span class="unit"> %</span></div>
      </div>

      <div class="tile">
        <div class="label">조회수 중앙값</div>
        <div class="value">11.3만<span class="unit"> 회</span></div>
      </div>

      <div class="tile">
        <div class="label">최고 급상승 지수</div>
        <div class="value">91<span class="unit"> 점</span></div>
      </div>
  </div></section>

<section class="insight">
    <p class="headline">수익탐정사무소 55초 숏폼이 구독자 15,000명으로 1,393,113회(92.9배)를 내며 1위에 올랐고, 상위 8편 중 숏폼이 4편(50%)으로 늘었다 — 나머지 두 숏폼도 '배당금 얼마 받으려면' 금액형이다</p>
      <ul>
<li>키워드 순위가 나흘 만에 바뀌었다. 미국주식 49점, 금리 47점, ETF 41점, 배당주 40점으로 ETF가 배당주를 앞질러 3위가 됐다. 세 키워드는 지난 회차보다 3점씩 올랐고 배당주만 1점 내려갔다. 분석 187편의 조회수 중앙값은 113,361회로 지난 회차보다 높아졌고, 전체 숏폼 비중도 11%로 올랐다.</li>
</ul>
    <div class="watchout"><strong>주의</strong> · 1위 숏폼의 92.9배는 한 편의 결과다. 같은 채널의 두 편이 1·2위를 함께 차지했으니 채널 고유의 소재 선택일 수 있고, 제목의 '112조원' 같은 수치는 영상 주장일 뿐 이 리포트가 확인한 사실이 아니다. / 살다보니 그렇더라(6초)와 1분지혜(5초) 숏폼은 길이가 비정상적으로 짧게 기록돼 있다. 지난 회차 배당 숏폼도 6초였다. 길이는 따르지 말고 주제만 참고한다. / 상위권 최다 조회 1,784,978회는 중앙값 113,361회와 열 배 넘게 차이 난다. 한두 편으로 일반화하지 않는다. / 오선의 미국 증시 라이브 10월 02일 생방송은 지난 회차에 업로드 직후라 viewsPerHour가 부풀려져 있었는데, 이번엔 38,589로 내려왔다. 생방송 순위는 하루 지나서 다시 본다. / 배당ETF 롱폼은 대형 채널 한 편이 근거다. 다음 회차에 ETF 점수가 유지되는지 보고 판단한다. / 경쟁 채널 구독자 변화 0은 반올림된 스냅샷이라 '정체'로 단정하지 않는다.</div>
  </section>


<section>
    <h2>급상승 상위 5건 <span style="font-weight:400;font-size:14px;opacity:.7">(발췌)</span></h2>
    <div class="scroll">
      <table>
        <thead>
          <tr>
            <th></th><th>영상</th><th style="text-align:right">조회수</th>
            <th style="text-align:right">시간당</th><th style="text-align:right">구독 대비</th>
            <th style="text-align:right">급상승 지수</th>
          </tr>
        </thead>
        <tbody>
<tr>
          <td class="rank">1</td>
          <td class="vt">
            <a href="https://www.youtube.com/watch?v=QtG0BNW0Wn4" target="_blank" rel="noopener noreferrer">25년간 112조원을 번 미국의 한 천재 컴퓨터과학자 출신의 전설적인 투자자가 말하는 AI로 투자하는 방법 *볼린저밴드 rsi macd 거래량 이동평균선 보다 중요한 종목 찾는 법</a>
            <div class="sub">
              <span>수익탐정사무소</span>
              <span>구독 1.5만</span>
              <span>4일 전</span>
              <span class="short">SHORTS</span>
            </div>
          </td>
          <td class="num">139.3만</td>
          <td class="num">14,614</td>
          <td class="num">92.9배</td>
          <td class="num">
            <div class="heat">
              <span>91</span>
              <span class="bar"><span class="b4" style="width:91%"></span></span>
            </div>
          </td>
        </tr>
<tr>
          <td class="rank">2</td>
          <td class="vt">
            <a href="https://www.youtube.com/watch?v=t2djHbBGlq0" target="_blank" rel="noopener noreferrer">미국의 천재 퀀트트레이더가 주식으로 1200억을 벌어들인 방법?! *볼린저밴드 rsi macd 이동평균선 거래량보다 포트폴리오정리가 더 중요한 이유</a>
            <div class="sub">
              <span>수익탐정사무소</span>
              <span>구독 1.5만</span>
              <span>7일 전</span>
              <span class="short">SHORTS</span>
            </div>
          </td>
          <td class="num">47.4만</td>
          <td class="num">2,996</td>
          <td class="num">31.6배</td>
          <td class="num">
            <div class="heat">
              <span>75</span>
              <span class="bar"><span class="b3" style="width:75%"></span></span>
            </div>
          </td>
        </tr>
<tr>
          <td class="rank">3</td>
          <td class="vt">
            <a href="https://www.youtube.com/watch?v=ndcKsPnU8gE" target="_blank" rel="noopener noreferrer">[26년 10월 02일 금]  경제지표: 비농업 취업자수, 실업률 ｜ 테슬라, 3분기 인도량 발표 ｜ 프랑스 재정·정치 위기 심화… ｜  -  오선의 미국 증시 라이브</a>
            <div class="sub">
              <span>오선의 미국 증시 라이브</span>
              <span>구독 122.0만</span>
              <span>1일 전</span>
              
            </div>
          </td>
          <td class="num">107.4만</td>
          <td class="num">38,589</td>
          <td class="num">0.9배</td>
          <td class="num">
            <div class="heat">
              <span>70</span>
              <span class="bar"><span class="b3" style="width:70%"></span></span>
            </div>
          </td>
        </tr>
<tr>
          <td class="rank">4</td>
          <td class="vt">
            <a href="https://www.youtube.com/watch?v=4pWtEmbUITQ" target="_blank" rel="noopener noreferrer">배당금 100만원 받으려면 몇 주 있어야 할까? 국내 대표주 10곳 한눈에 보기</a>
            <div class="sub">
              <span>살다보니 그렇더라</span>
              <span>구독 2.4만</span>
              <span>3일 전</span>
              <span class="short">SHORTS</span>
            </div>
          </td>
          <td class="num">50.5만</td>
          <td class="num">6,352</td>
          <td class="num">21.1배</td>
          <td class="num">
            <div class="heat">
              <span>70</span>
              <span class="bar"><span class="b3" style="width:70%"></span></span>
            </div>
          </td>
        </tr>
<tr>
          <td class="rank">5</td>
          <td class="vt">
            <a href="https://www.youtube.com/watch?v=xzQriWhY3M0" target="_blank" rel="noopener noreferrer">[26년 09월 30일 수]  마이크론, 실적발표/어닝콜 ｜ PCE가격지수, GDP 성장률 ｜ 트럼프·AI 업계 수장들, 자율 안전 기준 합의 ｜  -  오선의 미국 증시 라이브</a>
            <div class="sub">
              <span>오선의 미국 증시 라이브</span>
              <span>구독 122.0만</span>
              <span>3일 전</span>
              
            </div>
          </td>
          <td class="num">135.7만</td>
          <td class="num">18,119</td>
          <td class="num">1.1배</td>
          <td class="num">
            <div class="heat">
              <span>67</span>
              <span class="bar"><span class="b3" style="width:67%"></span></span>
            </div>
          </td>
        </tr>
</tbody>
      </table>
    </div>
  </section>
<section>
    <h2>키워드별 열기</h2>
    <div class="kw">
      <div class="row">
        <div class="name">미국주식</div>
        <div class="track"><div class="fill" style="width:100%"></div></div>
        <div class="val">49점 · 50건</div>
      </div>
      <div class="row">
        <div class="name">금리</div>
        <div class="track"><div class="fill" style="width:96%"></div></div>
        <div class="val">47점 · 50건</div>
      </div>
      <div class="row">
        <div class="name">ETF</div>
        <div class="track"><div class="fill" style="width:84%"></div></div>
        <div class="val">41점 · 50건</div>
      </div>
      <div class="row">
        <div class="name">배당주</div>
        <div class="track"><div class="fill" style="width:82%"></div></div>
        <div class="val">40점 · 50건</div>
      </div>
    </div>
  </section>
<section>
    <h2>경쟁 채널 동향</h2>
    <div class="comp">
      <div class="c">
        <div class="n">슈카월드</div>
        <div class="st"><span>구독자</span><span>373.0만 <span class="faint-note">1.0만 단위 반올림 · 일간 변화는 보이지 않음</span></span></div>
        <div class="st"><span>총 조회수</span><span>16.9억 <span class="up">+746,415</span></span></div>
        <div class="st"><span>영상 수</span><span>2,396</span></div>
      </div>
      <div class="c">
        <div class="n">삼프로TV 3PROTV</div>
        <div class="st"><span>구독자</span><span>304.0만 <span class="faint-note">1.0만 단위 반올림 · 일간 변화는 보이지 않음</span></span></div>
        <div class="st"><span>총 조회수</span><span>19.4억 <span class="up">+1,934,603</span></span></div>
        <div class="st"><span>영상 수</span><span>23,111</span></div>
      </div>
      <div class="c">
        <div class="n">815머니톡</div>
        <div class="st"><span>구독자</span><span>129.0만 <span class="faint-note">1.0만 단위 반올림 · 일간 변화는 보이지 않음</span></span></div>
        <div class="st"><span>총 조회수</span><span>7.8억 <span class="up">+402,036</span></span></div>
        <div class="st"><span>영상 수</span><span>13,698</span></div>
      </div>
    </div>
    <p class="note" style="margin-top:12px">증감은 2026-10-03 회차 대비입니다.</p>
  </section>



  <footer>
    <span>데이터 · YouTube Data API v3</span>
    <span>생성 2026-10-04 10:34</span>
    
  </footer>
</div>

</div>
{% endraw %}

---

수집·지표 계산·인사이트 작성·수치 검증까지 자동 파이프라인이 처리한 결과입니다.
지난 회차는 [유튜브트렌드](/categories/%EC%9C%A0%ED%8A%9C%EB%B8%8C%ED%8A%B8%EB%A0%8C%EB%93%9C/)에 모여 있습니다.
