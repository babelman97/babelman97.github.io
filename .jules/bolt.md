## 2026-04-12 - Initial Journal
**Learning:** Initializing the Bolt performance journal.
**Action:** Always follow the Bolt daily process: Profile, Select, Optimize, Verify, Present.
## 2026-04-12 - Clock Update Loop Optimization in index.html
**Learning:** The 1-second clock update loop in `index.html` was repeatedly calling expensive `toLocaleTimeString` and `toLocaleDateString` functions for multiple timezones and performing redundant DOM lookups. Benchmarks confirmed that caching `Intl.DateTimeFormat` instances and DOM references is ~44x faster (from ~5s down to ~114ms for 10k iterations).
**Action:** Always cache `Intl.DateTimeFormat` instances for high-frequency time/date formatting and DOM references for repetitive UI updates.
