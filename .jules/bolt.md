## 2026-06-15 - Hybrid Random Sampling Optimization
**Learning:** Rejection sampling for unique random numbers (using a Set) suffers from the Coupon Collector's Problem, becoming extremely slow (O(N²)) as the requested count approaches the range size. A Fisher-Yates shuffle provides O(N) performance for high-density requests but requires a range cap (e.g., 10M) to avoid memory exhaustion from large array allocations.
**Action:** Use hybrid sampling (Set-based rejection for <50% density, Fisher-Yates for >=50%) and always implement a range size safety check when using array-based shuffles.
