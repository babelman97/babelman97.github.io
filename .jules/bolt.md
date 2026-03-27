## 2025-05-15 - AudioContext Singleton Pattern
**Learning:** Instantiating a new `AudioContext` for every short sound effect (like a "tick" sound) is an expensive operation (~0.8ms - 1ms per instance) and can lead to "too many AudioContexts" warnings or resource exhaustion. Reusing a single persistent `AudioContext` reduces the overhead to near-zero (~0.004ms per call) after initial creation.
**Action:** Use a singleton or persistent `AudioContext` for application-wide sound effects instead of creating new instances in event handlers.
