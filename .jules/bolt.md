## 2026-05-15 - Caching Intl.DateTimeFormat and DOM References
**Learning:** High-frequency UI updates (like a clock) are heavily bottlenecked by redundant `Intl.DateTimeFormat` instantiation and DOM lookups. `toLocaleTimeString` and `toLocaleDateString` create new formatter instances internally, which is extremely expensive in a loop or interval.
**Action:** Always cache `Intl.DateTimeFormat` instances and DOM elements outside of high-frequency functions. Use lazy-loading for DOM elements to ensure they are available when accessed.
