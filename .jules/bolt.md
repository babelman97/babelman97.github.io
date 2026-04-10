# Bolt's Performance Journal

## 2025-04-10 - Intl.DateTimeFormat vs toLocaleTimeString
**Learning:** Caching `Intl.DateTimeFormat` instances is significantly faster than calling `toLocaleTimeString` or `toLocaleDateString` repeatedly. Node.js benchmarks showed Method 2 (Cached Intl) was ~38x faster (54ms vs 2051ms for 10,000 iterations) in the environment.
**Action:** Always prefer `Intl.DateTimeFormat` for high-frequency date/time formatting (e.g., 1s clock loops).
