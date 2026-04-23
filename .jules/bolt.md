## 2026-04-23 - Clock update loop optimization in index.html
**Learning:** Frequent calls to `toLocaleTimeString` and `document.getElementById` inside a high-frequency loop (like `setInterval`) are expensive. Caching `Intl.DateTimeFormat` instances and DOM references significantly improves performance.
**Action:** Always check for repeated DOM lookups and expensive object creations in `setInterval` or `requestAnimationFrame` loops and hoist them.
