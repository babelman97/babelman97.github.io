## 2025-05-15 - Offscreen Canvas Caching with shadowBlur
**Learning:** When caching elements that use `shadowBlur` or glows into offscreen canvases, the canvas must have sufficient padding. Without padding, the glow effect is clipped at the canvas boundaries, leading to harsh edges.
**Action:** Always add a `padding` variable when creating sprite canvases for glowing elements and apply a matching negative offset when drawing them back to the main canvas.
