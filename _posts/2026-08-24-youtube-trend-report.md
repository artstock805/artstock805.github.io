---
title: "유튜브 트렌드 리포트 샘플 — 파일럿 · 재테크/투자 (2026-08-24)"
date: 2026-08-24 09:00:00 +0900
categories: [트레이딩, 유튜브트렌드]
tags: [유튜브, 트렌드분석, 재테크, 투자, 자동화]
permalink: /posts/youtube-trend-report-2026-08-24/
---

> 매일 자동으로 수집·분석해 발행하는 유튜브 트렌드 리포트입니다.
> 수집부터 지표 계산, 인사이트 작성, 검증까지 파이프라인이 처리하며 사람은 발행 승인만 합니다.
{: .prompt-info }

이 글은 **구조를 보여주기 위한 공개 샘플**입니다. 실제 발행본에 들어가는
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
.trend-report * { box-sizing: border-box; }
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
.trend-report * { transition: none !important; animation: none !important; }
}
@media (max-width: 520px) {
.trend-report .wrap { padding: 22px 14px 48px; }
.trend-report .kw .row { grid-template-columns: minmax(64px, 96px) 1fr auto; }
}
.trend-report { max-width: 100%; }
.trend-report .wrap { padding: 0; gap: 24px; }
.trend-report .insight ul { list-style: disc; padding-left: 18px; }
.trend-report .vt a:hover { color: var(--accent); text-decoration: underline; }
</style>
<div class="trend-report">
<div class="wrap">
  <header class="masthead">
    <div class="kicker">YouTube Trend Report</div>
    <h1>파일럿 · 재테크/투자</h1>
    <div class="meta">
      <span>2026-08-24</span>
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
        <div class="value">10<span class="unit"> %</span></div>
      </div>

      <div class="tile">
        <div class="label">조회수 중앙값</div>
        <div class="value">6.5만<span class="unit"> 회</span></div>
      </div>

      <div class="tile">
        <div class="label">최고 급상승 지수</div>
        <div class="value">84<span class="unit"> 점</span></div>
      </div>
  </div></section>
<section class="insight">
    <p class="headline">금리가 피드를 덮고 있는데, 이번 회차 1위(84점)는 금리가 아니라 '주주환원'이었습니다</p>
      <ul>
<li>키워드 열기는 금리 56점, 미국주식 52점, ETF 49점, 배당주 38점입니다. 상위 8건 중 5건의 제목에 '금리'가 들어갑니다. 국채금리 급등이 이번 주 대화의 기본 배경입니다.</li>
</ul>
    <div class="watchout"><strong>주의</strong> · '금리' 키워드에 은행 예금 광고(792,188회, 댓글 4개)와 영어권 채널이 계속 섞여 들어옵니다. 조회수만으로 줄 세우면 광고 영상이 1위가 됩니다. 배수와 댓글을 함께 보셔야 합니다. 다음 회차부터 '기준금리' 또는 '국채금리'로 좁히면 노이즈가 줄어듭니다. 또 조회수 중앙값은 65,432인데 상위권은 수십만입니다. 편차가 12배까지 벌어지므로 한 편의 성과로 방향을 정하지 마십시오. 경쟁 채널 구독자 증감이 0으로 나온 것은 유튜브가 구독자 수를 반올림해 표시하기 때문이며 실제로 정체됐다는 뜻이 아닙니다. 이 수치는 며칠 누적된 뒤에 읽으셔야 합니다.</div>
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
            <a href="https://www.youtube.com/watch?v=JtPJ9i91k5g" target="_blank" rel="noopener noreferrer">삼성전자 100조 환원 발표 임박, 자사주 소각 못 하고 배당만 주는 '진짜 이유'</a>
            <div class="sub">
              <span>잘되라대한민국</span>
              <span>구독 3,950</span>
              <span>3일 전</span>
              
            </div>
          </td>
          <td class="num">11.7만</td>
          <td class="num">1,790</td>
          <td class="num">29.6배</td>
          <td class="num">
            <div class="heat">
              <span>84</span>
              <span class="bar"><span class="b4" style="width:84%"></span></span>
            </div>
          </td>
        </tr>
<tr>
          <td class="rank">2</td>
          <td class="vt">
            <a href="https://www.youtube.com/watch?v=aTim7NaL1VM" target="_blank" rel="noopener noreferrer">미국 국채금리 급등, 왜 주식이 무너질까? 📉 잭슨홀에 전 세계가 긴장한 이유</a>
            <div class="sub">
              <span>1분썰배달</span>
              <span>구독 2.0만</span>
              <span>5일 전</span>
              <span class="short">SHORTS</span>
            </div>
          </td>
          <td class="num">35.5만</td>
          <td class="num">3,307</td>
          <td class="num">17.7배</td>
          <td class="num">
            <div class="heat">
              <span>83</span>
              <span class="bar"><span class="b4" style="width:83%"></span></span>
            </div>
          </td>
        </tr>
<tr>
          <td class="rank">3</td>
          <td class="vt">
            <a href="https://www.youtube.com/watch?v=roeKxjXF7bc" target="_blank" rel="noopener noreferrer">미국 금리 4.5% 돌파하자 트럼프 반응은? 📉 백악관 혼란 30초 정리</a>
            <div class="sub">
              <span>1분썰배달</span>
              <span>구독 2.0만</span>
              <span>2일 전</span>
              <span class="short">SHORTS</span>
            </div>
          </td>
          <td class="num">22.0만</td>
          <td class="num">5,185</td>
          <td class="num">10.9배</td>
          <td class="num">
            <div class="heat">
              <span>83</span>
              <span class="bar"><span class="b4" style="width:83%"></span></span>
            </div>
          </td>
        </tr>
<tr>
          <td class="rank">4</td>
          <td class="vt">
            <a href="https://www.youtube.com/watch?v=o0QUMmM89dY" target="_blank" rel="noopener noreferrer">채권 금리 도로 '급등'...하루도 못 버틴 미국의 돌려막기ㅣ미국 나랏빚 40조 달러 '바이백'도 소용없다 [한방이슈]</a>
            <div class="sub">
              <span>한방이슈</span>
              <span>구독 6,230</span>
              <span>2일 전</span>
              
            </div>
          </td>
          <td class="num">9.7만</td>
          <td class="num">1,646</td>
          <td class="num">15.5배</td>
          <td class="num">
            <div class="heat">
              <span>79</span>
              <span class="bar"><span class="b3" style="width:79%"></span></span>
            </div>
          </td>
        </tr>
<tr>
          <td class="rank">5</td>
          <td class="vt">
            <a href="https://www.youtube.com/watch?v=ldzE1_3ELhk" target="_blank" rel="noopener noreferrer">1천만원이 22억 된다! 미친 복리의 마법 &quot;이것&quot; 사야하는 이유. #ETF #배재규 #주식</a>
            <div class="sub">
              <span>신들린 타점 - 제우스</span>
              <span>구독 4,220</span>
              <span>7일 전</span>
              
            </div>
          </td>
          <td class="num">12.1만</td>
          <td class="num">723</td>
          <td class="num">28.6배</td>
          <td class="num">
            <div class="heat">
              <span>78</span>
              <span class="bar"><span class="b3" style="width:78%"></span></span>
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
        <div class="val">56점 · 50건</div>
      </div>
      <div class="row">
        <div class="name">미국주식</div>
        <div class="track"><div class="fill" style="width:93%"></div></div>
        <div class="val">52점 · 50건</div>
      </div>
      <div class="row">
        <div class="name">ETF</div>
        <div class="track"><div class="fill" style="width:88%"></div></div>
        <div class="val">49점 · 50건</div>
      </div>
      <div class="row">
        <div class="name">배당주</div>
        <div class="track"><div class="fill" style="width:68%"></div></div>
        <div class="val">38점 · 50건</div>
      </div>
    </div>
  </section>
<section>
    <h2>경쟁 채널 동향</h2>
    <div class="comp">
      <div class="c">
        <div class="n">슈카월드</div>
        <div class="st"><span>구독자</span><span>372.0만 <span class="up">±0</span></span></div>
        <div class="st"><span>총 조회수</span><span>16.3억 <span class="up">+144,612</span></span></div>
        <div class="st"><span>영상 수</span><span>2,353</span></div>
      </div>
      <div class="c">
        <div class="n">삼프로TV 3PROTV</div>
        <div class="st"><span>구독자</span><span>304.0만 <span class="up">±0</span></span></div>
        <div class="st"><span>총 조회수</span><span>18.6억 <span class="up">+198,381</span></span></div>
        <div class="st"><span>영상 수</span><span>22,549</span></div>
      </div>
      <div class="c">
        <div class="n">815머니톡</div>
        <div class="st"><span>구독자</span><span>129.0만 <span class="up">±0</span></span></div>
        <div class="st"><span>총 조회수</span><span>7.5억 <span class="up">+119,603</span></span></div>
        <div class="st"><span>영상 수</span><span>13,420</span></div>
      </div>
    </div>
    <p class="note" style="margin-top:12px">증감은 2026-08-23 회차 대비입니다.</p>
  </section>


  <footer>
    <span>데이터 · YouTube Data API v3</span>
    <span>생성 2026-08-24 08:55</span>
    <span>다음 회차 · 내일 같은 시각</span>
  </footer>
</div>
</div>
{% endraw %}
