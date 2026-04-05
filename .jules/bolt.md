## 2025-05-22 - Optimized Date Formatting in index.html
**Learning:** `toLocaleTimeString` and `toLocaleDateString` are significantly slower than using a cached `Intl.DateTimeFormat` instance, especially when called repeatedly in a `setInterval` loop. Benchmarks showed ~100x speedup (757ms vs 7.6ms for 1000 iterations).
**Action:** Use `Intl.DateTimeFormat` and cache the instances for frequently updated UI elements like clocks.
