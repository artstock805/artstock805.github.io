---
title: "유튜브 트렌드 리포트 — 재테크/투자 (2026-09-07)"
date: 2026-09-07 09:00:00 +0900
categories: [트레이딩, 유튜브트렌드]
tags: [유튜브, 트렌드분석, 재테크, 투자, 자동화]
permalink: /posts/youtube-trend-report-pilot-invest-2026-09-07/
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
      <span>2026-09-07</span>
      <span>최근 7일 기준</span>
      <span>KR</span>
      <span>키워드 미국주식 · ETF · 배당주 · 금리</span>
    </div>
  </header>

<section><div class="tiles">

      <div class="tile">
        <div class="label">분석한 영상</div>
        <div class="value">186<span class="unit"> 건</span></div>
      </div>

      <div class="tile">
        <div class="label">숏폼 비중</div>
        <div class="value">11<span class="unit"> %</span></div>
      </div>

      <div class="tile">
        <div class="label">조회수 중앙값</div>
        <div class="value">9.1만<span class="unit"> 회</span></div>
      </div>

      <div class="tile">
        <div class="label">최고 급상승 지수</div>
        <div class="value">79<span class="unit"> 점</span></div>
      </div>
  </div></section>

<section class="insight">
    <p class="headline">상위 8편 중 숏폼이 어제 4편에서 2편으로 줄었고, 롱폼 6자리는 채널 두 곳이 나눠 가졌다. 금리는 1위를 지켰지만 미국주식이 1점 차까지 붙었다.</p>
      <ul>
<li>전체 186편 중 숏폼 비중은 11%로 어제(12%)와 사실상 같은데, 상위 8편에 든 숏폼은 4편에서 2편으로 반토막 났다. 어제 1위였던 소형 채널 숏폼은 오늘 상위권에서 빠졌다. 노출 비중이 줄어서가 아니라 상위권으로 올라가는 경로가 좁아진 회차다.</li>
</ul>
    <div class="watchout"><strong>주의</strong> · 롱폼 상위 6편이 전부 8시간이 넘는 라이브 아카이브라, 이 데이터로는 편집 롱폼의 성과를 판단할 수 없다. 이번 회차 제안을 전부 숏폼으로 낸 이유이기도 하다. 또 그 6자리를 채널 두 곳이 3편씩 차지했으므로 '롱폼이 유리하다'가 아니라 '이 두 채널이 유리하다'로 읽어야 한다. 표본이 포맷이 아니라 채널 단위로 쏠려 있다. 중앙값 조회수는 91,089회인데 1위 롱폼은 1,460,998회로 16배 차이가 나므로 상위 한두 편만 보고 포맷을 정하면 안 된다. 경쟁 3개 채널은 구독자 증감이 모두 0이라 이번 회차로 채널 간 우열은 판단할 수 없다.</div>
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
            <a href="https://www.youtube.com/watch?v=ax5Z1S3MOEo" target="_blank" rel="noopener noreferrer">[1Q ETF] 미국 S&amp;P500·나스닥100과 미국채를 한 번에｜1Q 미국 대표 지수 채권혼합 ETF 2종 #하나자산운용 #미국S&amp;P500 #나스닥100 #퇴직연금ETF</a>
            <div class="sub">
              <span>하나TV [하나자산운용]</span>
              <span>구독 3,120</span>
              <span>4일 전</span>
              <span class="short">SHORTS</span>
            </div>
          </td>
          <td class="num">23.2만</td>
          <td class="num">2,457</td>
          <td class="num">74.4배</td>
          <td class="num">
            <div class="heat">
              <span>79</span>
              <span class="bar"><span class="b3" style="width:79%"></span></span>
            </div>
          </td>
        </tr>
<tr>
          <td class="rank">2</td>
          <td class="vt">
            <a href="https://www.youtube.com/watch?v=B1Zwj3cGVxQ" target="_blank" rel="noopener noreferrer">지금 보면 믿기 힘든 1988년 금리 #응답하라 #응답하라1988 #성동일</a>
            <div class="sub">
              <span>웃음공장장</span>
              <span>구독 1.4만</span>
              <span>5일 전</span>
              <span class="short">SHORTS</span>
            </div>
          </td>
          <td class="num">22.7만</td>
          <td class="num">1,910</td>
          <td class="num">15.7배</td>
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
            <a href="https://www.youtube.com/watch?v=omVT7S7oso0" target="_blank" rel="noopener noreferrer">[26년 09월 03일 목] 테슬라, '사이버캡' 런칭 행사 ｜ 일본, 금리 인상 전망에 '엔화' 강세 ｜브로드컴, AI칩 매출 2배 성장 전망 ｜ -  오선의 미국 증시 라이브</a>
            <div class="sub">
              <span>오선의 미국 증시 라이브</span>
              <span>구독 121.0만</span>
              <span>3일 전</span>
              
            </div>
          </td>
          <td class="num">129.0만</td>
          <td class="num">17,383</td>
          <td class="num">1.1배</td>
          <td class="num">
            <div class="heat">
              <span>72</span>
              <span class="bar"><span class="b3" style="width:72%"></span></span>
            </div>
          </td>
        </tr>
<tr>
          <td class="rank">4</td>
          <td class="vt">
            <a href="https://www.youtube.com/watch?v=zzzan2F8KHY" target="_blank" rel="noopener noreferrer">[9월 4일 라이브] 국채 금리가 내리니 모든 것이 상승! 국장도 따라가자!</a>
            <div class="sub">
              <span>주식명사수 주명</span>
              <span>구독 7.2만</span>
              <span>3일 전</span>
              
            </div>
          </td>
          <td class="num">26.1만</td>
          <td class="num">4,145</td>
          <td class="num">3.6배</td>
          <td class="num">
            <div class="heat">
              <span>72</span>
              <span class="bar"><span class="b3" style="width:72%"></span></span>
            </div>
          </td>
        </tr>
<tr>
          <td class="rank">5</td>
          <td class="vt">
            <a href="https://www.youtube.com/watch?v=zwYSdLd6JrY" target="_blank" rel="noopener noreferrer">[26년 09월 02일 수]  실적발표: 브로드컴, HPE 등 ｜ 이란 전쟁발 유가 급등 ｜ 엔비디아, '허깅페이스' 인수 임박  ｜ -  오선의 미국 증시 라이브</a>
            <div class="sub">
              <span>오선의 미국 증시 라이브</span>
              <span>구독 121.0만</span>
              <span>4일 전</span>
              
            </div>
          </td>
          <td class="num">146.1만</td>
          <td class="num">15,068</td>
          <td class="num">1.2배</td>
          <td class="num">
            <div class="heat">
              <span>71</span>
              <span class="bar"><span class="b3" style="width:71%"></span></span>
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
        <div class="val">57점 · 50건</div>
      </div>
      <div class="row">
        <div class="name">미국주식</div>
        <div class="track"><div class="fill" style="width:98%"></div></div>
        <div class="val">56점 · 50건</div>
      </div>
      <div class="row">
        <div class="name">ETF</div>
        <div class="track"><div class="fill" style="width:88%"></div></div>
        <div class="val">50점 · 50건</div>
      </div>
      <div class="row">
        <div class="name">배당주</div>
        <div class="track"><div class="fill" style="width:65%"></div></div>
        <div class="val">37점 · 50건</div>
      </div>
    </div>
  </section>
<section>
    <h2>경쟁 채널 동향</h2>
    <div class="comp">
      <div class="c">
        <div class="n">슈카월드</div>
        <div class="st"><span>구독자</span><span>373.0만 <span class="faint-note">1.0만 단위 반올림 · 일간 변화는 보이지 않음</span></span></div>
        <div class="st"><span>총 조회수</span><span>16.4억 <span class="up">+323,781</span></span></div>
        <div class="st"><span>영상 수</span><span>2,368</span></div>
      </div>
      <div class="c">
        <div class="n">삼프로TV 3PROTV</div>
        <div class="st"><span>구독자</span><span>304.0만 <span class="faint-note">1.0만 단위 반올림 · 일간 변화는 보이지 않음</span></span></div>
        <div class="st"><span>총 조회수</span><span>18.7억 <span class="up">+273,712</span></span></div>
        <div class="st"><span>영상 수</span><span>22,748</span></div>
      </div>
      <div class="c">
        <div class="n">815머니톡</div>
        <div class="st"><span>구독자</span><span>129.0만 <span class="faint-note">1.0만 단위 반올림 · 일간 변화는 보이지 않음</span></span></div>
        <div class="st"><span>총 조회수</span><span>7.6억 <span class="up">+46,237</span></span></div>
        <div class="st"><span>영상 수</span><span>13,512</span></div>
      </div>
    </div>
    <p class="note" style="margin-top:12px">증감은 2026-09-06 회차 대비입니다.</p>
  </section>



  <footer>
    <span>데이터 · YouTube Data API v3</span>
    <span>생성 2026-09-07 08:37</span>
    
  </footer>
</div>

</div>
{% endraw %}

---

수집·지표 계산·인사이트 작성·수치 검증까지 자동 파이프라인이 처리한 결과입니다.
지난 회차는 [유튜브트렌드](/categories/%EC%9C%A0%ED%8A%9C%EB%B8%8C%ED%8A%B8%EB%A0%8C%EB%93%9C/)에 모여 있습니다.
