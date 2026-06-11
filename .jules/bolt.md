
## 2025-05-15 - Caching Intl.DateTimeFormat and DOM References
**Learning:** Using `Intl.DateTimeFormat` is significantly faster than repeated `toLocaleString` calls, especially when cached. Additionally, lazy-loading and caching DOM references within a high-frequency update function like `updateTime` (called every second) reduces lookup overhead and layout thrashing when combined with `textContent`.
**Action:** Always prefer `Intl.DateTimeFormat` over `toLocaleString` for periodic UI updates and cache the formatter instances.
