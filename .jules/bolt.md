## 2025-05-19 - Intl.DateTimeFormat Caching and Encapsulation
**Learning:** Calling `toLocaleTimeString` or `toLocaleDateString` repeatedly (e.g., every second) is expensive because it re-initializes the localization engine. Caching `Intl.DateTimeFormat` instances can provide a 40x-100x speedup. In static HTML files, using an IIFE to encapsulate these cached instances and lazy-loaded DOM references prevents global namespace pollution.
**Action:** Always prefer `Intl.DateTimeFormat.format()` over `toLocaleTimeString()` in high-frequency paths. Use IIFEs for encapsulation when working in global script tags.

## 2025-05-19 - The Set-based Unique Random Sampling Bottleneck
**Learning:** Using a `Set` and rejection sampling for generating unique random numbers becomes exponentially slower as the count approaches the range size (the "Coupon Collector's Problem"). For a range of 1,000,000, picking 999,990 numbers took over 8 seconds.
**Action:** When `count > range / 2`, it's faster to generate the *excluded* numbers or use a shuffle-based approach (like Fisher-Yates) if memory allows.
