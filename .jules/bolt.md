## 2026-04-04 - Caching Intl.DateTimeFormat
**Learning:** `Intl.DateTimeFormat` instantiation is a significant bottleneck in high-frequency loops (like a 1s clock update). Calling `toLocaleTimeString` or `toLocaleDateString` repeatedly creates new formatters internally, which is ~60x slower than using a cached formatter's `.format()` method.
**Action:** Always cache `Intl.DateTimeFormat` instances for repetitive date/time operations.
