## 2025-05-22 - Optimized Clock Update Loop in index.html
**Learning:** Initializing `Intl.DateTimeFormat` objects and performing DOM lookups (`document.getElementById`) inside a high-frequency loop (like a 1-second interval) adds unnecessary overhead. Benchmarks show that caching `Intl.DateTimeFormat` instances can be up to 100x faster than repeated `toLocaleTimeString` calls.
**Action:** Always cache DOM references and expensive objects (formatters, audio contexts, etc.) outside of intervals or requestAnimationFrame loops.
