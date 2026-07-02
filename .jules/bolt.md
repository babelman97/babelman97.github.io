## 2025-05-15 - Hybrid Unique Random Sampling
**Learning:** Rejection sampling for unique random numbers (using a `Set`) collapses to O(N²+) at high density due to frequent collisions. A Sparse Fisher-Yates shuffle using a `Map` provides guaranteed O(count) time complexity without the memory overhead of a full array.
**Action:** Use rejection sampling for < 50% density and Sparse Fisher-Yates for >= 50% density. Limit range size (e.g., < 10M) for high-density requests to avoid memory-related browser hangs.
