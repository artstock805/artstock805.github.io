---
title: "유튜브 트렌드 리포트 — 재테크/투자 (2026-09-14)"
date: 2026-09-14 09:00:00 +0900
categories: [트레이딩, 유튜브트렌드]
tags: [유튜브, 트렌드분석, 재테크, 투자, 자동화]
permalink: /posts/youtube-trend-report-pilot-invest-2026-09-14/
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
      <span>2026-09-14</span>
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
        <div class="value">13<span class="unit"> %</span></div>
      </div>

      <div class="tile">
        <div class="label">조회수 중앙값</div>
        <div class="value">13.7만<span class="unit"> 회</span></div>
      </div>

      <div class="tile">
        <div class="label">최고 급상승 지수</div>
        <div class="value">74<span class="unit"> 점</span></div>
      </div>
  </div></section>

<section class="insight">
    <p class="headline">금리가 이틀 연속 키워드 1위이고, 어제 상위권이던 1분 미만 ETF 영상 두 편이 그대로 남아 구독자 대비 배수를 20.1배·10.9배까지 키웠다.</p>
      <ul>
<li>키워드 네 개의 평균 점수가 모두 올랐고 순위는 그대로다. 금리 54점, 미국주식 53점, ETF 49점, 배당주 40점이다. 전 회차는 금리 51점, 미국주식 50점, ETF 45점, 배당주 38점이었다. 금리가 이틀 연속 1위, 배당주가 이틀 연속 최하위다. 키워드마다 영상 50건씩 같은 조건으로 본 결과다.</li>
</ul>
    <div class="watchout"><strong>주의</strong> · 이번 회차 1위는 구독자 602명 대만 투신사 채널의 중국어 영상이다(136,646회, 구독자의 227배). 한국 지역 검색에 잡혔을 뿐 한국어 시청자를 향한 콘텐츠가 아니므로 따라 할 사례로 읽으면 안 된다. 중앙값 조회수는 136,646회인데 상위권은 1,430,236회까지 벌어지고, 상위 롱폼 3편은 길이가 32,866초에서 35,657초에 이르는 라이브 방송이라 편집 영상과 같은 기준으로 비교할 수 없다. 경쟁 채널 구독자 증감이 전부 0이라 이번 회차도 구독자 흐름으로는 결론을 낼 수 없다.</div>
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
            <a href="https://www.youtube.com/watch?v=rGWzZqyZtKE" target="_blank" rel="noopener noreferrer">近期盤勢波動大！主動式 ETF還具投資優勢？ 台新投信 沈建宏</a>
            <div class="sub">
              <span>台新投信 TSIT</span>
              <span>구독 602</span>
              <span>6일 전</span>
              
            </div>
          </td>
          <td class="num">13.7만</td>
          <td class="num">1,000</td>
          <td class="num">227.0배</td>
          <td class="num">
            <div class="heat">
              <span>74</span>
              <span class="bar"><span class="b3" style="width:74%"></span></span>
            </div>
          </td>
        </tr>
<tr>
          <td class="rank">2</td>
          <td class="vt">
            <a href="https://www.youtube.com/watch?v=Dvyfd-HPMD8" target="_blank" rel="noopener noreferrer">[26년 09월 11일 금]  소비자물가지수(CPI),  기대인플레이션 ｜  이란·걸프 국가 회동 예정  ｜ 오라클, 데이터센터 투자 성과 가시화 ｜ -  오선의 미국 증시 라이브</a>
            <div class="sub">
              <span>오선의 미국 증시 라이브</span>
              <span>구독 121.0만</span>
              <span>2일 전</span>
              
            </div>
          </td>
          <td class="num">136.6만</td>
          <td class="num">27,962</td>
          <td class="num">1.1배</td>
          <td class="num">
            <div class="heat">
              <span>70</span>
              <span class="bar"><span class="b3" style="width:70%"></span></span>
            </div>
          </td>
        </tr>
<tr>
          <td class="rank">3</td>
          <td class="vt">
            <a href="https://www.youtube.com/watch?v=Wmky4kF4z0E" target="_blank" rel="noopener noreferrer">미국 국채금리 폭등하면 우리 지갑에 벌어지는 일 I 스튜디오경향</a>
            <div class="sub">
              <span>스튜디오 경향</span>
              <span>구독 9.4만</span>
              <span>6일 전</span>
              
            </div>
          </td>
          <td class="num">55.2만</td>
          <td class="num">4,195</td>
          <td class="num">5.9배</td>
          <td class="num">
            <div class="heat">
              <span>69</span>
              <span class="bar"><span class="b3" style="width:69%"></span></span>
            </div>
          </td>
        </tr>
<tr>
          <td class="rank">4</td>
          <td class="vt">
            <a href="https://www.youtube.com/watch?v=A-6KNpuqNK0" target="_blank" rel="noopener noreferrer">[26년 09월 10일 목]  생산자물가지수, 30년물 국채 경매 ｜ 엔비디아 CEO, 골드만삭스 컨퍼런스 참석  ｜ 실적: 오라클, 어도비 ｜ -  오선의 미국 증시 라이브</a>
            <div class="sub">
              <span>오선의 미국 증시 라이브</span>
              <span>구독 121.0만</span>
              <span>3일 전</span>
              
            </div>
          </td>
          <td class="num">143.0만</td>
          <td class="num">19,771</td>
          <td class="num">1.2배</td>
          <td class="num">
            <div class="heat">
              <span>68</span>
              <span class="bar"><span class="b3" style="width:68%"></span></span>
            </div>
          </td>
        </tr>
<tr>
          <td class="rank">5</td>
          <td class="vt">
            <a href="https://www.youtube.com/watch?v=epOZvLX2JE8" target="_blank" rel="noopener noreferrer">반도체 ETF 리밸런싱으로 삼성·하이닉스 기계적 매도 📉 20% 한도 초과 이슈</a>
            <div class="sub">
              <span>1분썰배달</span>
              <span>구독 2.2만</span>
              <span>4일 전</span>
              <span class="short">SHORTS</span>
            </div>
          </td>
          <td class="num">23.9만</td>
          <td class="num">2,479</td>
          <td class="num">10.9배</td>
          <td class="num">
            <div class="heat">
              <span>68</span>
              <span class="bar"><span class="b3" style="width:68%"></span></span>
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
        <div class="name">금리</div>
        <div class="track"><div class="fill" style="width:100%"></div></div>
        <div class="val">54점 · 50건</div>
      </div>
      <div class="row">
        <div class="name">미국주식</div>
        <div class="track"><div class="fill" style="width:98%"></div></div>
        <div class="val">53점 · 50건</div>
      </div>
      <div class="row">
        <div class="name">ETF</div>
        <div class="track"><div class="fill" style="width:91%"></div></div>
        <div class="val">49점 · 50건</div>
      </div>
      <div class="row">
        <div class="name">배당주</div>
        <div class="track"><div class="fill" style="width:74%"></div></div>
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
        <div class="st"><span>총 조회수</span><span>16.6억 <span class="up">+1,965,891</span></span></div>
        <div class="st"><span>영상 수</span><span>2,374</span></div>
      </div>
      <div class="c">
        <div class="n">삼프로TV 3PROTV</div>
        <div class="st"><span>구독자</span><span>304.0만 <span class="faint-note">1.0만 단위 반올림 · 일간 변화는 보이지 않음</span></span></div>
        <div class="st"><span>총 조회수</span><span>19.0억 <span class="up">+966,229</span></span></div>
        <div class="st"><span>영상 수</span><span>22,845</span></div>
      </div>
      <div class="c">
        <div class="n">815머니톡</div>
        <div class="st"><span>구독자</span><span>129.0만 <span class="faint-note">1.0만 단위 반올림 · 일간 변화는 보이지 않음</span></span></div>
        <div class="st"><span>총 조회수</span><span>7.7억 <span class="up">+598,977</span></span></div>
        <div class="st"><span>영상 수</span><span>13,560</span></div>
      </div>
    </div>
    <p class="note" style="margin-top:12px">증감은 2026-09-13 회차 대비입니다.</p>
  </section>



  <footer>
    <span>데이터 · YouTube Data API v3</span>
    <span>생성 2026-09-14 07:34</span>
    
  </footer>
</div>

</div>
{% endraw %}

---

수집·지표 계산·인사이트 작성·수치 검증까지 자동 파이프라인이 처리한 결과입니다.
지난 회차는 [유튜브트렌드](/categories/%EC%9C%A0%ED%8A%9C%EB%B8%8C%ED%8A%B8%EB%A0%8C%EB%93%9C/)에 모여 있습니다.
