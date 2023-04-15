---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.dap = {
  n = {
    ["<F10>"] = {
      function()
        require("dap").continue()
      end,
      "continue debugging",
    },
    ["<F8>"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "toggle breakpoint",
    },
  },
}

-- more keybinds!

return M
