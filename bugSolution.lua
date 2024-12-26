local function foo(t, order)
  order = order or {}
  for i, k in ipairs(order) do
    local v = t[k]
    if type(v) == "table" then
      foo(v, next(v))
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
local order = next(t)
foo(t, order)