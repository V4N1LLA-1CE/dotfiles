return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      preset = "default",
      ["<Tab>"] = { "accept", "fallback" },
    },
    appearance = {
      use_nvim_cmp_as_default = true,
    },
    completion = {
      menu = {
        auto_show = true,
        border = "rounded",
        winhighlight = "Normal:BlinkCmpMenu,FloatBorder:BlinkCmpMenuBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
        scrollbar = true,
      },
    },
    documentation = {
      auto_show = true,
      window = {
        border = "rounded",
      },
    },
  },
  config = function(_, opts)
    require("blink.cmp").setup(opts)

    -- Custom highlight groups for proper rounded border background
    vim.api.nvim_set_hl(0, "BlinkCmpMenu", {
      bg = "NONE",
      fg = vim.api.nvim_get_hl(0, { name = "Normal" }).fg,
    })
    vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", {
      bg = "NONE",
      fg = "#FF7AB2", -- Xcode pink for border
    })
    vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", {
      bg = "#4A1F3D",
      fg = "#FF7AB2",
    })

    -- Scrollbar styling to match theme
    vim.api.nvim_set_hl(0, "PmenuSbar", {
      bg = "NONE",
    })
    vim.api.nvim_set_hl(0, "PmenuThumb", {
      bg = "#FF7AB2",
    })

    -- Documentation window styling
    vim.api.nvim_set_hl(0, "BlinkCmpDoc", {
      bg = "NONE",
      fg = vim.api.nvim_get_hl(0, { name = "Normal" }).fg,
    })
    vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", {
      bg = "NONE",
      fg = "#FF7AB2",
    })
  end,
}
