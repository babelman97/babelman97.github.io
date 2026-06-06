## 2025-05-23 - Intl.DateTimeFormat vs toLocaleTimeString visual parity
**Learning:** Replacing `toLocaleTimeString()` with cached `Intl.DateTimeFormat` instances provides ~20x-100x speedup. To maintain visual parity (especially AM/PM vs 24h), avoid setting `hour12` explicitly unless required; omitting it allows the formatter to respect locale/browser defaults, matching the original behavior.
**Action:** Always prefer cached `Intl.DateTimeFormat` in high-frequency loops (`requestAnimationFrame` or `setInterval`) while being careful with locale options to ensure zero visual regression.
