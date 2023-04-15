---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.debug = {
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
      "step into",
    },
    ["<F24>"] = { -- <F24> means Shift + F12
      function()
        require("dap").step_out()
      end,
      "step out",
    },
    ["<F10>"] = {
      function()
        require("dap").step_over()
      end,
      "step over",
    },
  },
}

-- more keybinds!

return M
