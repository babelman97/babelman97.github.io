## 2026-06-16 - [Dashboard Clock Optimization]
**Learning:** Re-verified that the dashboard clock was a significant bottleneck (~1.3ms per call) due to repeated `toLocaleTimeString` calls and DOM `innerHTML` parsing. Caching `Intl.DateTimeFormat` and DOM references provided a ~100x speedup.
**Action:** Always check high-frequency UI updates (like clocks) for redundant localization and DOM manipulation. Use IIFEs for clean caching.
