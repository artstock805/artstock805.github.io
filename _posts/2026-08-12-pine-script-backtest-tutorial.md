---
title: "TradingView Pine Script로 나만의 전략 백테스트 해보기"
date: 2026-08-12 09:00:00 +0900
categories: [트레이딩, 후기]
tags: [백테스트]
---

## 이 글에서 다루는 질문

[이동평균선 크로스 전략]({% post_url 2026-08-03-ma-cross-strategy-backtest-sp500 %}) 같은 글을 읽고 "내가 직접 검증해보고 싶다"는 생각이 들 수 있습니다. TradingView의 Pine Script를 쓰면 코딩을 깊게 몰라도 기본적인 전략을 백테스트할 수 있습니다.

## 준비물

- TradingView 계정 (무료 플랜도 Pine Script 편집·백테스트 사용 가능)
- 백테스트하고 싶은 규칙을 말로 먼저 정리하기 (예: "20일선이 60일선을 상향 돌파하면 매수")

## 기본 구조 예시

```pinescript
//@version=5
strategy("MA Cross Example", overlay=true)

fastMA = ta.sma(close, 20)
slowMA = ta.sma(close, 60)

if ta.crossover(fastMA, slowMA)
    strategy.entry("Long", strategy.long)

if ta.crossunder(fastMA, slowMA)
    strategy.close("Long")

plot(fastMA, color=color.blue)
plot(slowMA, color=color.orange)
```

이 코드를 차트에 적용하면 "Strategy Tester" 탭에서 승률, 손익비, 최대 낙폭(MDD) 같은 성과 지표를 바로 확인할 수 있습니다.

## 처음 해볼 때 흔히 하는 실수

- **과최적화(overfitting)**: 파라미터(20일, 60일 등)를 계속 바꿔가며 과거 데이터에만 잘 맞는 값을 찾는 것 — 미래에는 통하지 않을 가능성이 큽니다.
- **거래비용 무시**: 슬리피지·수수료를 반영하지 않으면 실제보다 성과가 부풀려 보입니다. Strategy Tester 설정에서 반드시 반영하세요.
- **표본 기간이 너무 짧음**: 특정 국면(상승장/하락장)에서만 잘된 결과를 전체 성과로 오해하지 않도록, 상승·하락·횡보 구간을 고루 포함해 테스트해야 합니다.

## 3줄 요약

1. Pine Script를 쓰면 무료로도 자신만의 전략을 실제 과거 데이터로 백테스트할 수 있습니다.
2. Strategy Tester에서 승률·손익비·MDD를 확인하되, 거래비용을 반드시 반영해야 합니다.
3. 과최적화를 피하려면 여러 시장 국면을 포함한 충분히 긴 기간으로 검증해야 합니다.

---

> 본 글은 정보 제공 목적으로 작성되었으며 특정 상품에 대한 투자 권유가 아닙니다. 자세한 내용은 [투자 유의사항](/disclaimer/)을 참고해 주세요.
{: .prompt-info }
