---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.dap = {
  n = {
    ["<F5>"] = {
      function()
        require("dap").continue()
      end,
      "continue debugging",
    },
    ["<F9>"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "toggle breakpoint",
    },
    ["<F12>"] = {
      function()
        require("dap").step_into()
      end,
      "toggle breakpoint",
    },
    ["<F24>"] = { -- <F24> means Shift + F12
      function()
        require("dap").step_out()
      end,
      "toggle breakpoint",
    },
    ["<F10>"] = {
      function()
        require("dap").step_over()
      end,
      "toggle breakpoint",
    },
  },
}

-- more keybinds!

return M
