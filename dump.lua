local M = {}

-- local dump = require("custom.dump").dump
-- print(dump(plugins))

M.dump = function(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. require("custom.dump").dump(v) .. ', '
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

return M


