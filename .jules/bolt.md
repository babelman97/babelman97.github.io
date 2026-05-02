## 2026-05-02 - Hybrid Sampling Strategy for Unique Random Numbers
**Learning:** Rejection sampling using a Set becomes extremely inefficient as the number of requested unique values approaches the total range (Coupon Collector's Problem), leading to potentially thousands of redundant random generations and UI freezes.
**Action:** Use a hybrid strategy: Rejection sampling for sparse requests (count < 50% range) and exclusion sampling (Fisher-Yates style swap-and-pop from a full array) for dense requests. This ensures deterministic performance regardless of density.
