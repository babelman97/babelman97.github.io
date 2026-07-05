## 2025-05-24 - [Initial Journal Entry]
**Learning:** Initializing the Bolt performance journal. The repository consists of standalone HTML files with embedded JS/CSS.
**Action:** Focus on algorithmic and DOM optimizations within these standalone files.

## 2025-05-24 - [Unique Random Sampling Optimization]
**Learning:** Rejection sampling for unique random numbers collapses at high density (O(N²+)). A hybrid approach using Sparse Fisher-Yates shuffle (O(N)) is significantly more efficient for high-density requests.
**Action:** Implement hybrid sampling in `random.html` and cap range/count to avoid memory issues in the browser.
