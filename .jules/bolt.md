## 2024-05-22 - Intl.DateTimeFormat Caching
**Learning:** Calling `toLocaleTimeString` or `toLocaleDateString` repeatedly (e.g., in a 1s loop) is expensive because it creates a new `Intl.DateTimeFormat` instance every time. Caching these instances globally or lazily resulted in a ~40x performance improvement in the clock update function (from ~1.6ms to ~0.04ms).
**Action:** Always cache `Intl.DateTimeFormat` instances for high-frequency formatting tasks.
