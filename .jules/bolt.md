## 2026-04-14 - Canvas Sprite Caching & Shadow Padding
**Learning:** Pre-rendering expensive Canvas2D operations (radial gradients, `shadowBlur`) into offscreen "sprite" canvases can yield massive performance gains (~22x speedup in this case). However, when caching elements with glows or shadows, the cache canvas MUST include sufficient padding to prevent visual clipping of the effect.
**Action:** Always calculate or over-estimate shadow/glow radius and add it to the dimensions of the offscreen cache canvas, then offset the `drawImage` call accordingly.
