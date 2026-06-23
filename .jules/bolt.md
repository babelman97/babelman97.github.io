## 2025-06-23 - Sparse Fisher-Yates for High-Density Random Sampling
**Learning:** Rejection sampling for unique random numbers collapses in performance (O(N²+)) when the sample size approaches the range size due to frequent collisions (the Coupon Collector's Problem).
**Action:** Use a hybrid strategy: rejection sampling (using a `Set`) for densities < 50%, and a Map-based Sparse Fisher-Yates algorithm for densities >= 50%. Also, cap the range size (e.g., 10M) to prevent memory-related `RangeError` from large array allocations or string joins.
