# Bolt Performance Journal

## 2025-05-15 - High-Density Sampling Bottleneck in JS
**Learning:** Rejection sampling for unique random numbers (using a Set) collapses in performance (O(N²+) behavior) as the requested count approaches the range size due to collision probability.
**Action:** Switch to a Fisher-Yates shuffle or exclusion-based sampling when the density exceeds 50% of the range.

## 2025-05-15 - Redundant DOM & Intl.DateTimeFormat Overhead
**Learning:** Calling `toLocaleTimeString` and `toLocaleDateString` repeatedly in a 1s loop is expensive (~1.5ms per call). Caching `Intl.DateTimeFormat` instances and using dirty-checking for date strings reduces this to <0.05ms.
**Action:** Always cache formatters and DOM references in high-frequency loops. Use `textContent` for partial updates when possible.
