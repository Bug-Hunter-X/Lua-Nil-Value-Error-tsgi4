local function foo(x)
  if x == nil then
    return 0 -- or handle the nil in a more appropriate way
  end
  return x + 1
end

local function bar()
  local a = foo(nil)
  print(a) -- prints 0
end

bar()

--Alternative solution using pcall
local function bar2()
  local success, result = pcall(foo, nil)
  if success then
    print(result)
  else
    print("Error:", result)
  end
end
bar2() --prints Error: x is nil