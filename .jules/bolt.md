## 2025-01-24 - Optimization of high-frequency clock updates
**Learning:** Calling `toLocaleTimeString` or `toLocaleDateString` in a 1-second loop is highly inefficient because it often re-instantiates `Intl.DateTimeFormat` internally. Caching these instances, along with DOM references, can lead to a ~50x speedup (from ~5.8s to ~118ms for 10k iterations).
**Action:** Always check for repeated localization calls in loops or high-frequency timers and replace them with cached `Intl.DateTimeFormat` instances.
