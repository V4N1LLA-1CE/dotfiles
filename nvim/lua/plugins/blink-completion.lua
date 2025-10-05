return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    }
    opts.keymap = {
      preset = "default",
      ["<Tab>"] = { "accept", "fallback" },
    }
    opts.appearance = {
      use_nvim_cmp_as_default = true,
    }
    opts.completion = {
      menu = {
        auto_show = true,
        border = "rounded",
        winhighlight = "Normal:BlinkCmpMenu,FloatBorder:BlinkCmpMenuBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
        scrollbar = true,
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 200,
        treesitter_highlighting = true,
        window = {
          border = "rounded",
          min_width = 10,
          max_width = 80,
          max_height = 30,
          scrollbar = true,
        },
      },
    }
    return opts
  end,
  config = function(_, opts)
    -- Ensure sources.compat is removed
    if opts.sources and opts.sources.compat then
      opts.sources.compat = nil
    end

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

    -- Additional documentation window highlights
    vim.api.nvim_set_hl(0, "BlinkCmpDocCursorLine", {
      bg = "#4A1F3D",
    })
  end,
}
