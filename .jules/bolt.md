## 2025-05-15 - [Fisher-Yates Optimization with Large Integers]
**Learning:** Using `Int32Array` for performance optimization in JavaScript can lead to functional regressions if the range of numbers exceeds the signed 32-bit integer limit (approx. 2.1 billion). JavaScript numbers are 64-bit floats and can safely represent integers up to 2^53 - 1.
**Action:** Use standard `Array` or `Float64Array` when optimizing numeric collections that might contain large values, unless the range is strictly known to be within 32-bit limits.
