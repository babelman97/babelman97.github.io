## 2025-05-22 - Intl.DateTimeFormat Caching
**Learning:** Calling `.toLocaleTimeString()` or `.toLocaleDateString()` in a high-frequency loop (e.g. 1Hz clock) is expensive because it reconstructs the `Intl.DateTimeFormat` object every time.
**Action:** Cache `Intl.DateTimeFormat` instances and DOM references in a closure (IIFE) to achieve 20x-100x speedup.

## 2025-05-22 - High-Frequency DOM Dirty Checking
**Learning:** Updating `innerHTML` every second even if the content (like the date) hasn't changed triggers unnecessary layout calculations and reflows.
**Action:** Use dirty-checking to only update the DOM when the formatted string actually changes.
