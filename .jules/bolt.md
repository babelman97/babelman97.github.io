## 2025-06-25 - [Hybrid Unique Random Selection]
**Learning:** For unique random number generation, rejection sampling (Set) collapses in performance as density increases due to collisions (the "Coupon Collector's Problem"). A hybrid approach using a Map-based Sparse Fisher-Yates shuffle for high density (>= 50%) maintains O(count) time complexity and avoids O(N²+) collision overhead.
**Action:** Always consider the density of the requested set relative to the range when performing unique sampling and switch to a shuffle-based algorithm for high-density requests.
