local depth = 0

return function(name, fn)
  depth = depth + 1

  print(('>'):rep(depth) .. ' ' .. name)
  local start = os.clock()
  local result = { fn() }
  local finish = os.clock()
  print(('>'):rep(depth) .. ' /' .. name .. ' (' .. (finish - start) .. ' sec)')

  depth = depth - 1

  return table.unpack(result)
end
