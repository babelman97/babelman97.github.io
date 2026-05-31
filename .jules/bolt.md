## 2025-05-15 - Hybrid Sampling for Unique Random Selection
**Learning:** Unique random selection using rejection sampling (Set) suffers from the 'Coupon Collector's Problem', leading to non-deterministic performance degradation as requested density increases. Switching to Fisher-Yates shuffle for dense requests (>50% of range) ensures deterministic O(N) performance.
**Action:** Always check the requested density in unique selection algorithms and switch to shuffle-based strategies when density exceeds 50%.

## 2025-05-15 - Browser-Specific Safety Caps for Large Allocations
**Learning:** Dense sampling strategies using arrays (like Fisher-Yates) can trigger Out-Of-Memory (OOM) crashes if the range is extremely large (e.g., billions).
**Action:** Implement a safety cap (e.g., 10,000,000) on the range size when using array-based optimizations in a browser environment to maintain stability.
