## 2025-05-14 - Offscreen Canvas Caching for Static Backgrounds
**Learning:** In simple Canvas games, static elements like grids and obstacles often dominate the draw call count. Caching them in an offscreen canvas is a low-risk, high-reward optimization that significantly reduces CPU overhead per frame.
**Action:** When working with `<canvas>` high-frequency loops, identify elements that only change on specific events (like game start or level change) and move them to an offscreen cache canvas.
