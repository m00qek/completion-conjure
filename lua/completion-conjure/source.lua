local eval = require 'conjure.eval'

local M = {}

M.callback = false
M.items = {}

M.getCompletionItems = function(_, _)
  return M.items
end

M.getCallback = function()
  return M.callback
end

M.triggerFunction = function(_, params)
  M.callback = false
  M.items = {}

  eval.completions(params.prefix, function (items)
    M.items = items
    M.callback = true
  end)
end

return M
