## 2025-04-18 - Optimized Unique Random Sampling
**Learning:** Rejection sampling for unique random numbers (using a Set) degrades significantly in performance as the sample size $ approaches the population size $ due to increased collision probability. An "exclusion" strategy (sampling what to leave out) is much more efficient for high-density requests.
**Action:** When generating unique samples without replacement, check the ratio of /n$. If  > 2/3n$, switch to exclusion sampling combined with a Fisher-Yates shuffle to maintain random order.
