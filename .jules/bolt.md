## 2024-05-22 - Offscreen Canvas Sprite Caching for Snake
**Learning:** For Canvas-based games with high-frequency rendering (60FPS), per-frame operations like `createRadialGradient` and `shadowBlur` are significant bottlenecks. Caching these as static 'sprites' in offscreen canvases and using `drawImage` can improve performance by an order of magnitude.
**Action:** Always look for static or semi-static patterns in high-frequency loops that can be pre-rendered or cached.

## 2024-05-22 - DOM Caching for Frequent Updates
**Learning:** Repetitive DOM lookups (`getElementById`) in functions called every game tick or frame are wasteful.
**Action:** Cache DOM references in a global or scoped object during initialization.
