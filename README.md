# benchy.lua
Quick and dirty benchmarking

## Example
```lua
local benchy = require 'benchy'

local function sleep(sec)
  local start = os.clock()
  while os.clock() - start < sec do end
end

benchy('parent', function()
  benchy('child 1', function()
    sleep(1)
  end)

  benchy('child 2', function()
    sleep(0.5)
  end)
end)
```

```
> parent
>> child 1
>> /child 1 (1.000002 sec)
>> child 2
>> /child 2 (0.500003 sec)
> /parent (1.500041 sec)
```
