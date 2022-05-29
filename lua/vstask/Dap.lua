local M = {}

local dap_loaded = false

function M.setup()
  if dap_loaded then
    return
  end

  dap_loaded = true

  local ok, dap = pcall(require, "dap")
  if not ok then
    return
  end

  local Parse = require("vstask.Parse")
  local launch_list = Parse.Launch()

  if vim.tbl_isempty(launch_list) then
    return
  end

  for _, tbl in pairs(launch_list) do
    local type = tbl["type"]
    if dap.configurations[type] == nil then
      dap.configurations[type] = {}
    end
    table.insert(dap.configurations[type], tbl)
  end
end

return M
