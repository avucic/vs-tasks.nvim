local M = {}

function M.setup()
  local ok, dap = pcall(require, "dap")
  if not ok then
    return
  end

  local Parse = require("vstask.Parse")
  local launch_list = Parse.Launch()

  if vim.tbl_isempty(launch_list) then
    return
  end

  dap.configurations.ruby = launch_list
end

return M
