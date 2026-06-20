## 2025-05-15 - [Unique Random Sampling Optimization]
**Learning:** Rejection sampling (using a `Set`) for unique random numbers collapses in performance (O(N²)) as density increases due to the Coupon Collector's Problem. A hybrid approach switching to Sparse Fisher-Yates (Map-based) for >50% density maintains O(N) performance.
**Action:** Use hybrid sampling or Fisher-Yates for any "unique random" requirements in high-density scenarios. Capping range at 10M prevents memory issues in browser environments.

## 2025-05-15 - [Bulk DOM Updates for Large Lists]
**Learning:** Using `textContent` instead of `innerText` for bulk string updates (e.g., a comma-separated list of 1M numbers) is significantly faster because it avoids triggering layout recalculations during property access.
**Action:** Always prefer `textContent` for high-frequency or large-scale text updates where layout info is not needed.
