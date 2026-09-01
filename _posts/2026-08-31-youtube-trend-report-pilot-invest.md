---
title: "유튜브 트렌드 리포트 — 재테크/투자 (2026-08-31)"
date: 2026-08-31 09:00:00 +0900
categories: [트레이딩, 유튜브트렌드]
tags: [유튜브, 트렌드분석, 재테크, 투자, 자동화]
permalink: /posts/youtube-trend-report-pilot-invest-2026-08-31/
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
      <span>2026-08-31</span>
      <span>최근 7일 기준</span>
      <span>KR</span>
      <span>키워드 미국주식 · ETF · 배당주 · 금리</span>
    </div>
  </header>

<section><div class="tiles">

      <div class="tile">
        <div class="label">분석한 영상</div>
        <div class="value">185<span class="unit"> 건</span></div>
      </div>

      <div class="tile">
        <div class="label">숏폼 비중</div>
        <div class="value">12<span class="unit"> %</span></div>
      </div>

      <div class="tile">
        <div class="label">조회수 중앙값</div>
        <div class="value">7.6만<span class="unit"> 회</span></div>
      </div>

      <div class="tile">
        <div class="label">최고 급상승 지수</div>
        <div class="value">71<span class="unit"> 점</span></div>
      </div>
  </div></section>

<section class="insight">
    <p class="headline">상위권은 대형 채널이 되찾았지만, 구독자 수를 뛰어넘은 건 숏폼 3편뿐이다</p>
      <ul>
<li>상위 8편 중 숏폼은 3편으로 37.5퍼센트다. 수집한 185편 전체의 숏폼 비율 12퍼센트보다 세 배 높다. 상위권 진입 비용이 가장 낮은 형식은 이번에도 숏폼이다.</li>
</ul>
    <div class="watchout"><strong>주의</strong> · 조회수 1위인 1,496,501회 영상은 35,226초짜리 라이브 방송이다. 38,561초, 6,961초 라이브도 함께 상위권에 올라와 있어 조회수가 콘텐츠의 힘보다 방송 시간에 비례한다. 중앙값 76,072회와 약 20배 벌어진 이유가 여기 있으니 라이브를 기준으로 목표 조회수를 잡으면 안 된다. 또 이번 회차 경쟁 채널 증감은 모두 0으로 잡혀 있어(같은 날 재수집이 기준이 됐다) 구독자 변화는 이번 회차 데이터로 읽을 수 없다.</div>
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
            <a href="https://www.youtube.com/watch?v=wVu9gbB0kvw" target="_blank" rel="noopener noreferrer">S&amp;P500 투자자 주목! S&amp;P500도 액티브할 TIME  #액티브ETF #S&amp;P500</a>
            <div class="sub">
              <span>TIME 액티브 ETF</span>
              <span>구독 458</span>
              <span>3일 전</span>
              <span class="short">SHORTS</span>
            </div>
          </td>
          <td class="num">6.7만</td>
          <td class="num">931</td>
          <td class="num">146.1배</td>
          <td class="num">
            <div class="heat">
              <span>71</span>
              <span class="bar"><span class="b3" style="width:71%"></span></span>
            </div>
          </td>
        </tr>
<tr>
          <td class="rank">2</td>
          <td class="vt">
            <a href="https://www.youtube.com/watch?v=GyFXkXP6BrI" target="_blank" rel="noopener noreferrer">[8월 31일 라이브] 금리 인상 사이클? 창신메모리 실적의 추격. 이 와중에 이란 공습?</a>
            <div class="sub">
              <span>주식명사수 주명</span>
              <span>구독 7.1만</span>
              <span>3시간 전</span>
              
            </div>
          </td>
          <td class="num">6.7만</td>
          <td class="num">21,013</td>
          <td class="num">0.9배</td>
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
            <a href="https://www.youtube.com/watch?v=7qnlkXyu-EM" target="_blank" rel="noopener noreferrer">미국 언론도 놀랐다! 한국 개미들이 SOXL 3배 레버리지로 몰린 진짜 이유 #SOXL #서학개미 #레버리지 #염승환</a>
            <div class="sub">
              <span>위키타카</span>
              <span>구독 6.8만</span>
              <span>5일 전</span>
              <span class="short">SHORTS</span>
            </div>
          </td>
          <td class="num">46.9만</td>
          <td class="num">3,891</td>
          <td class="num">6.9배</td>
          <td class="num">
            <div class="heat">
              <span>68</span>
              <span class="bar"><span class="b3" style="width:68%"></span></span>
            </div>
          </td>
        </tr>
<tr>
          <td class="rank">4</td>
          <td class="vt">
            <a href="https://www.youtube.com/watch?v=bMpElckfoJ0" target="_blank" rel="noopener noreferrer">[26년 08월 27일 목]  엔비디아 CEO, “성장세 더 빨라지고 있다” ｜ 미국, 반도체 관세 확대 검토 ｜ 실적발표: 마벨·아이렌   ｜ -  오선의 미국 증시 라이브</a>
            <div class="sub">
              <span>오선의 미국 증시 라이브</span>
              <span>구독 120.0만</span>
              <span>3일 전</span>
              
            </div>
          </td>
          <td class="num">149.7만</td>
          <td class="num">19,944</td>
          <td class="num">1.2배</td>
          <td class="num">
            <div class="heat">
              <span>67</span>
              <span class="bar"><span class="b3" style="width:67%"></span></span>
            </div>
          </td>
        </tr>
<tr>
          <td class="rank">5</td>
          <td class="vt">
            <a href="https://www.youtube.com/watch?v=_oEmvtsetsU" target="_blank" rel="noopener noreferrer">[26년 08월 26일 수]  엔비디아, 실적발표 및 어닝콜 ｜ 베센트 풋 효과? 국채 금리 하락 ｜ 메타, 소셜미디어 소송 합의 논의  ｜ -  오선의 미국 증시 라이브</a>
            <div class="sub">
              <span>오선의 미국 증시 라이브</span>
              <span>구독 120.0만</span>
              <span>4일 전</span>
              
            </div>
          </td>
          <td class="num">111.2만</td>
          <td class="num">11,256</td>
          <td class="num">0.9배</td>
          <td class="num">
            <div class="heat">
              <span>64</span>
              <span class="bar"><span class="b3" style="width:64%"></span></span>
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
        <div class="name">ETF</div>
        <div class="track"><div class="fill" style="width:100%"></div></div>
        <div class="val">49점 · 50건</div>
      </div>
      <div class="row">
        <div class="name">금리</div>
        <div class="track"><div class="fill" style="width:100%"></div></div>
        <div class="val">49점 · 50건</div>
      </div>
      <div class="row">
        <div class="name">미국주식</div>
        <div class="track"><div class="fill" style="width:98%"></div></div>
        <div class="val">48점 · 50건</div>
      </div>
      <div class="row">
        <div class="name">배당주</div>
        <div class="track"><div class="fill" style="width:78%"></div></div>
        <div class="val">38점 · 50건</div>
      </div>
    </div>
  </section>
<section>
    <h2>경쟁 채널 동향</h2>
    <div class="comp">
      <div class="c">
        <div class="n">슈카월드</div>
        <div class="st"><span>구독자</span><span>372.0만 <span class="faint-note">1.0만 단위 반올림 · 일간 변화는 보이지 않음</span></span></div>
        <div class="st"><span>총 조회수</span><span>16.4억 <span class="up">±0</span></span></div>
        <div class="st"><span>영상 수</span><span>2,360</span></div>
      </div>
      <div class="c">
        <div class="n">삼프로TV 3PROTV</div>
        <div class="st"><span>구독자</span><span>304.0만 <span class="faint-note">1.0만 단위 반올림 · 일간 변화는 보이지 않음</span></span></div>
        <div class="st"><span>총 조회수</span><span>18.7억 <span class="up">±0</span></span></div>
        <div class="st"><span>영상 수</span><span>22,647</span></div>
      </div>
      <div class="c">
        <div class="n">815머니톡</div>
        <div class="st"><span>구독자</span><span>129.0만 <span class="faint-note">1.0만 단위 반올림 · 일간 변화는 보이지 않음</span></span></div>
        <div class="st"><span>총 조회수</span><span>7.6억 <span class="up">+186,476</span></span></div>
        <div class="st"><span>영상 수</span><span>13,471</span></div>
      </div>
    </div>
    <p class="note" style="margin-top:12px">증감은 2026-08-31 회차 대비입니다.</p>
  </section>



  <footer>
    <span>데이터 · YouTube Data API v3</span>
    <span>생성 2026-08-31 10:47</span>
    
  </footer>
</div>

</div>
{% endraw %}

---

수집·지표 계산·인사이트 작성·수치 검증까지 자동 파이프라인이 처리한 결과입니다.
지난 회차는 [유튜브트렌드](/categories/%EC%9C%A0%ED%8A%9C%EB%B8%8C%ED%8A%B8%EB%A0%8C%EB%93%9C/)에 모여 있습니다.
