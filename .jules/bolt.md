## 2025-05-14 - [Canvas Offscreen Sprite Caching]
**Learning:** Drawing complex elements like radial gradients and `shadowBlur` effects in a high-frequency Canvas rendering loop is a major performance bottleneck. Blitting pre-rendered offscreen canvases using `drawImage` is significantly faster.
**Action:** Always pre-render static or semi-static Canvas elements (grids, UI elements, animated sprites with expensive effects) into offscreen canvases during initialization to replace per-frame primitive drawing with optimized image transfers.
