## 2025-05-14 - Canvas Sprite Caching with Shadow Padding
**Learning:** When using offscreen canvas caching for elements with 'shadowBlur' or glows, the cache canvas must have enough padding to prevent the effects from being clipped.
**Action:** Always add padding (e.g., 10px) to cached canvases and use a centering helper to draw correctly. Update `drawImage` calls with the corresponding offset.
