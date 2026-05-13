## 2026-05-13 - Hybrid Sampling for Unique Random Selection
**Learning:** Rejection sampling with a `Set` works well for sparse requests but suffers from the "Coupon Collector's Problem" in dense requests (where count > 50% of range), leading to exponential performance collapse as collisions increase.
**Action:** Use a hybrid strategy. For dense requests, generate a Set of values to *exclude* (rangeSize - count) and iterate once through the range to collect included values. This ensures deterministic O(N) performance regardless of density.
