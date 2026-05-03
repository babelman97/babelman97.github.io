## 2025-05-03 - Intl.DateTimeFormat Caching for Clock Loops
**Learning:** Caching `Intl.DateTimeFormat` instances instead of calling `toLocaleTimeString()` repeatedly in a 1s loop provides a massive performance boost (~100x). Explicitly avoiding `hour12: false` preserves visual parity with default browser settings while still benefiting from the performance gain of a pre-allocated formatter.
**Action:** Always hoist `Intl.DateTimeFormat` instantiations outside of high-frequency loops (like clocks or timers).
