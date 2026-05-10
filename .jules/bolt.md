## 2025-05-15 - [Hybrid Sampling for Unique Random Selection]
**Learning:** Rejection sampling (using a `Set` and `while` loop) suffers from the 'Coupon Collector's Problem' performance collapse as the requested count approaches the range size.
**Action:** Switch to exclusion-based sampling (e.g., partial Fisher-Yates shuffle) when the requested count exceeds 50% of the range to ensure predictable $O(N)$ performance.
