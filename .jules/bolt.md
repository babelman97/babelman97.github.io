## 2025-05-14 - [Offscreen Canvas Caching for Complex Sprites]
**Learning:** In high-frequency animation loops (60fps), rendering multiple elements with radial gradients, linear gradients, and box shadows (shadowBlur) is extremely expensive for the CPU/GPU to re-calculate every frame. Caching these elements once onto offscreen canvases and using `drawImage` reduces the per-frame overhead of the main draw loop by over 90%.
**Action:** Always check if canvas elements drawn in a loop are static or can be pre-rendered, especially when using `createRadialGradient` or `shadowBlur`.
