## 2026-04-19 - AudioContext Singleton Optimization
**Learning:** Instantiating a new AudioContext on every user action is expensive (~1.5ms per call) and can hit browser limits (typically 6-20 concurrent contexts), causing audio to fail or apps to crash.
**Action:** Always use a singleton pattern for AudioContext for repeated sound effects.
