## 2025-05-22 - Sprite Caching in Canvas Games
**Learning:** For Canvas-based games with complex frame drawing (gradients, shadowBlur, radial paths), pre-rendering these elements into offscreen canvases (sprites) significantly reduces per-frame CPU/GPU overhead.
**Action:** Always check for repeated gradient or shadow creation in animation loops and replace them with drawImage from a cache.
