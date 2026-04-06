## 2025-05-15 - Canvas Sprite Caching Optimization
**Learning:** Pre-rendering expensive Canvas operations (radial/linear gradients, `shadowBlur`, and complex `arc` paths) into offscreen "sprite" canvases during initialization significantly reduces per-frame overhead. In `snake.html`, this reduced `drawGame` execution time by ~65%.
**Action:** When working with Canvas-based applications, always identify static or semi-static elements drawn repeatedly in a loop and move them to an initialization/pre-render phase using offscreen canvases.

## 2025-05-15 - Measuring Micro-bottlenecks with Loop Amplification
**Learning:** Standard `performance.now()` can be too coarse to reliably measure micro-optimizations that take <0.1ms.
**Action:** Use loop amplification (e.g., wrapping the target function in a 100x loop and dividing the result by 100) to make micro-bottlenecks measurable and obtain stable, comparable performance metrics.
