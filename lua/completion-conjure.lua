local conjure = require 'completion-conjure.source'

local M = {}

M.register = function()
  if require'completion' then
    require'completion'.addCompletionSource('conjure', {
      trigger = conjure.triggerFunction,
      callback = conjure.getCallback,
      item = conjure.getCompletionItems,
    })
  end
end

return M
