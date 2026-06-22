## 2025-05-15 - [Scope visibility in standalone HTML files]
**Learning:** Refactoring functions into closures (like IIFEs) to cache state in standalone HTML files can break inline event handlers (e.g., `onclick="func()"`) if the function is no longer globally accessible.
**Action:** When using IIFEs for performance optimizations, explicitly attach functions needed by the UI to the `window` object (e.g., `window.updateTime = ...`).
