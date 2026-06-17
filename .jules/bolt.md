## 2025-05-15 - Hybrid Unique Sampling in random.html
**Learning:** Rejection sampling for unique random numbers (using a Set) collapses in performance (O(N²)) when the requested count approach the total range size (Coupon Collector's Problem).
**Action:** Use a hybrid approach: rejection sampling for densities < 50% and Sparse Fisher-Yates (Map-based) for densities >= 50% to maintain O(count) complexity regardless of range.
