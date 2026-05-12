## 2025-05-15 - Optimizing Unique Random Selection for High Density

**Learning:** When using rejection sampling (via a `Set`) to generate unique random numbers, performance collapses as the requested count approaches the range size due to the "Coupon Collector's Problem." Collisions become exponentially frequent, leading to a performance cliff.

**Action:** Switch from rejection sampling to exclusion-based sampling (e.g., partial Fisher-Yates shuffle) when the requested count exceeds 50% of the range. This provides O(N) linear performance regardless of density, compared to the potentially unbounded execution time of rejection sampling in high-collision scenarios.
