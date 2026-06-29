## 2025-06-29 - Hybrid Unique Random Sampling
**Learning:** Rejection sampling (Set) for unique random numbers collapses at high density (O(N²+)), but hybrid Fisher-Yates approaches must cap range sizes (e.g., <10M) to prevent memory-related RangeError from large array allocations. Sparse Fisher-Yates using a Map is more efficient for high density.
**Action:** Use Sparse Fisher-Yates (Map) for high-density unique random sampling and always include a range size cap.

## 2025-06-29 - DOM Update Bottlenecks
**Learning:** For large datasets (e.g., 1M strings), the main bottleneck in the browser is not the JS logic (<500ms) but the DOM overhead of string joining and insertion via `textContent` (~5s).
**Action:** Use `textContent` instead of `innerText` to avoid layout reflows, and provide UI constraints (scrollable containers) to help the rendering engine.
