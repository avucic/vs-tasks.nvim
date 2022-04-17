function ToggleTerm_process(command, opts)
  if opts.direction == "horizontal" then
    vim.cmd("ToggleTerm size=10 direction=horizontal")
  elseif opts.direction == "vertical" then
    vim.cmd("ToggleTerm size=80 direction=vertical")
  else
    vim.cmd("ToggleTerm direction=float")
  end
  vim.cmd([[TermExec cmd="]] .. command .. [["]])
end

return { Process = ToggleTerm_process }
