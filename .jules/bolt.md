## 2026-03-18 - [Initial Entry]
**Learning:** Found that snake.html redraws its grid every frame and performs DOM lookups in a loop for particles.
**Action:** Cache the grid in an offscreen canvas and cache the game container DOM element.
