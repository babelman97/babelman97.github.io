## 2025-05-22 - Initial Bolt Audit
**Learning:** The codebase consists of several standalone HTML files with common performance anti-patterns: repeated DOM manipulation in loops, expensive Intl calls in high-frequency timers, and inefficient algorithms for unique sampling. Many documented optimizations in memory are currently missing from the physical files.
**Action:** Always verify the file content before assuming an optimization is present. Focus on one measurable win at a time.
