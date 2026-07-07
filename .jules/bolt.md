## 2025-05-15 - Optimized Unique Random Sampling
**Learning:** Rejection sampling using a `Set` for unique random numbers performs poorly ($O(N^2)$ average case for high collisions) when the requested count approaches the range size. A Sparse Fisher-Yates algorithm using a `Map` provides guaranteed $O(count)$ time complexity for high-density requests while remaining memory-efficient compared to a dense array.
**Action:** Use a hybrid approach for unique random sampling: Rejection sampling for low density (< 50%) and Sparse Fisher-Yates for high density (>= 50%).
