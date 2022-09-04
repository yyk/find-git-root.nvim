# find-git-root.nvim
Command to cd to the git root of the current buffer

## Installation
```
use { "yyk/find-git-root.nvim" }
```

## Usage
```
:CdGitRoot
```

This function is available too.
```lua
-- returns the git root directory if found, else nil
require("find-git-root").find_git_root()
```

## TODO
It's very dumb now, just traverses 10 levels up and look for existence .git directory. Maybe that's enough.
