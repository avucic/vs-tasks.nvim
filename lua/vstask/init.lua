local M = {}

M.Predefined = require("vstask.Predefined")
M.Config = require("vstask.Config")
M.Telescope = require("vstask.Telescope")
M.Parse = require("vstask.Parse")
M.Dap = require("vstask.Dap")

function M.setup(opts)
  if opts.terminal ~= nil and opts.terminal == "harpoon" then
    M.Telescope.Set_command_handler(require("vstask.Harpoon").Process)
  elseif opts.terminal ~= nil and opts.terminal == "toggleterm" then
    M.Telescope.Set_command_handler(require("vstask.ToggleTerm").Process)
  end
end

function M.load_dap_tasks()
  M.Dap.setup()
end

return M
