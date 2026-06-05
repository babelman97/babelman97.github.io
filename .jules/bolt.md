## 2025-06-05 - Intl.DateTimeFormat Caching and DOM Dirty Checking
**Learning:** Re-verified that caching Intl.DateTimeFormat instances and DOM references, combined with dirty-checking for values that change infrequently (like the date in a clock), yields a massive (~35x) performance improvement in high-frequency functions like `updateTime`. Even though this is a known pattern, it's often missing in static HTML projects.
**Action:** Always check high-frequency UI updates for redundant object creation and DOM thrashing. Use closures to encapsulate cached state.
