## 2025-05-15 - Hybrid Sampling for Unique Random Numbers
**Learning:** Rejection sampling using a Set for unique random number generation suffers from the Coupon Collector's Problem, where performance degrades exponentially as the requested count approaches the range size due to increasing collisions.
**Action:** Implement a hybrid strategy: use rejection sampling for sparse requests (<50% of range) to save memory, and switch to an exclusion-based strategy (like a partial Fisher-Yates shuffle) for dense requests to ensure (Count)$ performance.

## 2025-05-15 - Avoid Cold Path Micro-optimizations
**Learning:** Optimizing one-time setup functions (e.g., platform detection using regex on `navigator.userAgent`) is a micro-optimization that adds code complexity without improving the user experience or solving a real bottleneck.
**Action:** Focus on "hot paths" (high-frequency loops, frequent event handlers, or heavy data processing) where performance gains are measurable and impactful.
