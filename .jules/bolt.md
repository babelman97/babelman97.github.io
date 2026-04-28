## 2026-04-28 - Intl.DateTimeFormat Caching Efficiency
**Learning:** Reusing `Intl.DateTimeFormat` instances is significantly faster than calling `Date.prototype.toLocaleTimeString` or `toLocaleDateString`. In this codebase, the performance gain was roughly 60x in the specific environment tested, primarily because the native methods instantiate a new formatter internally for every call.
**Action:** Always prefer caching `Intl.DateTimeFormat` instances globally for any repeating UI updates or loops involving date/time formatting.

## 2026-04-28 - DOM Reference Caching in Static HTML
**Learning:** In a vanilla JS static HTML file, repeating `document.getElementById` calls in a `setInterval` or `requestAnimationFrame` loop adds unnecessary overhead and layout thrashing potential if the DOM structure is stable.
**Action:** Cache DOM elements as constants at the top level of the script tag when the elements are guaranteed to exist at runtime (or after `DOMContentLoaded`).
