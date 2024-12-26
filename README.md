# Lua Nested Table Iteration Bug

This repository demonstrates a potential issue with iterating over nested tables in Lua.  Lua's `pairs` iterator does not guarantee a specific order, which can lead to unpredictable results when processing nested structures recursively.

The `bug.lua` file contains a function that recursively traverses a nested table.  The output is dependent on the order of iteration, which might vary between Lua versions or implementations.  The `bugSolution.lua` file shows a more robust solution using a different iteration method.

## Bug
The issue lies in the use of `pairs` to iterate over the nested tables.  The order of keys may not be consistent across different Lua interpreters.

## Solution
The solution uses a different approach to guarantee the intended order during iteration.