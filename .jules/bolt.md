# Bolt's Performance Journal

## 2025-05-15 - Canvas Sprite Caching for High-Frequency Rendering
**Learning:** In Canvas-based games, recalculating complex vector paths, radial gradients, and `shadowBlur` effects every frame (e.g., in a `drawGame` loop) is a major performance bottleneck. For example, in `snake.html`, drawing these elements manually took ~1.05ms per frame, whereas pre-rendering them into an offscreen "sprite cache" and using `drawImage` reduced the time to ~0.06ms (a 17x speedup).
**Action:** Always look for static or repetitive visual elements in rendering loops that can be cached as bitmaps (offscreen canvases). Use `ctx.drawImage` for rendering these cached elements. Also, initialize the 2D context with `{ alpha: false }` for opaque backgrounds to further optimize compositing.
