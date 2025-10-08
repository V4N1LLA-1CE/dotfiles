return {
  {
    "rcarriga/nvim-dap-ui",
    opts = function(_, opts)
      -- Minimal 2-window layout: Scopes + Console
      opts.layouts = {
        {
          elements = {
            { id = "scopes", size = 1.0 },
          },
          size = 60, -- Wider variables window
          position = "left",
        },
        {
          elements = {
            { id = "console", size = 1.0 },
          },
          size = 10,
          position = "bottom",
        },
      }

      -- Customize rendering to be less verbose
      opts.render = {
        max_type_length = 0, -- Hide memory addresses like @74
        max_value_lines = 1, -- Compact values
        indent = 1,
      }

      -- Auto-expand variables to show values instead of references
      opts.expand_lines = true

      -- Enable window borders with titles
      opts.floating = {
        border = "rounded",
        mappings = {
          close = { "q", "<Esc>" },
        },
      }

      return opts
    end,
  },
}
