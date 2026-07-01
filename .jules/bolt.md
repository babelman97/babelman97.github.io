## 2025-05-15 - Optimized unique random sampling in `random.html`
**Learning:** Rejection sampling for unique random numbers collapses at high density (count approaching range size) due to collision overhead, leading to $O(N^2)$ or worse performance in practice. A hybrid approach using rejection sampling for low density and Sparse Fisher-Yates (Map-based) for high density maintains $O(count)$ complexity across the entire range.
**Action:** Use Sparse Fisher-Yates when sampling more than 50% of a range to avoid exponential slowdown from collisions.

## 2025-05-15 - Range cap for Fisher-Yates
**Learning:** High-density random selection using shuffle-based algorithms can lead to `RangeError: Invalid array length` or memory exhaustion if the range is too large (e.g., >10,000,000) in a browser environment.
**Action:** Always cap the maximum supported range when implementing in-memory sampling or shuffle algorithms to prevent browser performance degradation or crashes.
