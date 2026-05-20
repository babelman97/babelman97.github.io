
## 2026-05-20 - Hybrid Sampling for Unique Random Numbers
**Learning:** Rejection sampling using a Set (picking random numbers until unique count is met) suffers from the "Coupon Collector's Problem". As the requested count $ approaches the range $, the probability of collision increases exponentially, leading to (N \log N)$ or worse performance. For =1,000,000$ and =999,990$, the original code was extremely slow (~3.3s).
**Action:** Implement a hybrid strategy: use rejection sampling for sparse requests ( \le N/2$) and exclusion sampling (picking -k$ elements to *exclude*) followed by a Fisher-Yates shuffle for dense requests ( > N/2$). This maintains (N)$ worst-case performance.

## 2026-05-20 - Redundant Object Allocation in Loops
**Learning:** Functions called inside tight loops (like table generation or per-frame logic) should not allocate large static lookup objects or data structures internally. In `xlr.html`, `getChineseTimeInfo` recreates a 24-entry object on every call.
**Action:** Move static lookup objects outside of high-frequency functions or use a closure to cache them, reducing GC pressure and execution time.
