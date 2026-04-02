## 2025-05-14 - Canvas Sprite and Background Caching
**Learning:** For HTML5 Canvas games, re-calculating radial/linear gradients and `shadowBlur` effects every frame in `requestAnimationFrame` is a major bottleneck. Pre-rendering these elements once into offscreen "sprite" canvases and then using `drawImage` can reduce rendering time by over 90% (e.g., from ~0.38ms to ~0.03ms).
**Action:** Always identify static or repetitive complex drawing operations in canvas loops. Cache them into offscreen canvases. For sprites with glows/shadows, ensure the cache canvas has sufficient padding and the drawing is centered to avoid clipping the effect.

## 2025-05-14 - DOM Reference Caching
**Learning:** Repeated `document.getElementById` or `document.querySelector` calls inside high-frequency game loops or update functions add unnecessary overhead.
**Action:** Cache DOM element references in global or module-scoped variables during initialization (`DOMContentLoaded` or similar) to ensure instant access during the main loop.
