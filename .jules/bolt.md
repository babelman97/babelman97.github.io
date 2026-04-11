## 2025-05-15 - Canvas Rendering Optimization with Offscreen Caching

**Learning:** In Canvas-based games, repeatedly creating gradients and applying `shadowBlur` in the main loop is a major bottleneck (~0.89ms per frame for a simple snake game). Pre-rendering these elements into offscreen "sprites" and using `drawImage` is significantly faster (~0.05ms per frame, ~16x speedup).

**Action:** Always look for repetitive path/gradient/shadow drawing in high-frequency loops and implement offscreen canvas caching. Remember to add padding to the offscreen canvas when using `shadowBlur` to prevent clipping.

## 2025-05-15 - Intl.DateTimeFormat Caching

**Learning:** Repeatedly calling `toLocaleTimeString` or `toLocaleDateString` is extremely slow compared to using a cached `Intl.DateTimeFormat` instance. Benchmarks showed a ~30x improvement.

**Action:** For high-frequency date/time formatting, always cache `Intl.DateTimeFormat` instances.
