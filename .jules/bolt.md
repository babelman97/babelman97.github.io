## 2025-04-08 - Tool Output Truncation on Large Files
**Learning:** Tools like `read_file`, `cat`, or `run_in_bash_session` may truncate the output of large static files (e.g., `xlr.html` at ~29KB), leading to incomplete context and incorrect assumptions about function implementations.
**Action:** Use targeted commands like `sed -n 'start,endp'` to read specific ranges of lines and ensure full visibility of the code before proposing optimizations or changes.
