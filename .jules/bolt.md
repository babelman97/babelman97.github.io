## 2025-05-15 - [Random unique sampling density optimization]
**Learning:** Rejection sampling (Set) for unique random numbers collapses at high density (Coupon Collector's Problem). Hybrid approaches using Fisher-Yates shuffle for high density (count > 50% of range) ensure O(N) complexity. Also, strict range validation (minValue >= maxValue) prevents single-value generation which is sometimes desired.
**Action:** Always check sampling density for unique random generation and use hybrid strategies. Ensure range validation allows single values (minValue === maxValue) if requested count is 1.
