## 2025-05-15 - Hybrid Sampling for Unique Random Selection
**Learning:** Unique random number generation using rejection sampling (Set) suffers from the "Coupon Collector's Problem" when the requested count is a large fraction of the available range. Performance degrades exponentially as the set fills up.
**Action:** Use a hybrid strategy: Rejection sampling for sparse requests and Fisher-Yates shuffle for high-density requests (>50% of range). Always cap array allocations (e.g., 10M elements) to prevent memory exhaustion.
