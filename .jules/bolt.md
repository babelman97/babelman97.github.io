## 2026-05-08 - Intl.DateTimeFormat Caching
**Learning:** Caching `Intl.DateTimeFormat` instances instead of calling `toLocaleTimeString` or `toLocaleDateString` repeatedly yields a massive performance boost (observed ~50x speedup). This is because the constructor for these formatters is heavy and performs locale negotiation and pattern parsing.
**Action:** Always prefer persistent `Intl.DateTimeFormat` instances for high-frequency time updates.
