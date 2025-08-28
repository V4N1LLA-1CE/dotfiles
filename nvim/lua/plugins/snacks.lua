return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    -- Ensure snacks is configured
    opts = opts or {}
    
    return opts
  end,
  config = function(_, opts)
    require("snacks").setup(opts)

    -- Using your exact color scheme with better combinations
    local colors = {
      -- Base colors from your scheme
      bg = "#292a31",
      bg_alt = "#2D2D30",
      bg_highlight = "#2D2D30",
      fg = "#FFFFFF",
      fg_alt = "#D4D4D4",
      fg_dark = "#9D9D9D",
      
      -- Xcode syntax colors
      keyword = "#FF7AB2", -- Pink
      string = "#FF8170", -- Coral red  
      function_name = "#67B7A4", -- Green
      constant = "#4EB0CC", -- Light blue
      type = "#6BDFFF", -- Bright blue
      number = "#D9C97C", -- Warm yellow
      parameter = "#D2A8FF", -- Light purple
      
      -- UI colors
      cursor = "#ff5257", -- Red cursor
      selection = "#FF7AB2", -- Pink selection from your scheme
      visual = "#636f83", -- Visual selection background
      border = "#3E3E42", -- Window borders
    }

    -- Snacks Picker highlights with better color harmony
    vim.api.nvim_set_hl(0, "SnacksPickerNormal", { bg = "NONE", fg = colors.fg_alt })
    vim.api.nvim_set_hl(0, "SnacksPickerBorder", { bg = "NONE", fg = colors.constant }) -- Light blue borders
    vim.api.nvim_set_hl(0, "SnacksPickerTitle", { bg = "NONE", fg = colors.type, bold = true }) -- Bright blue title
    
    -- Picker input/prompt styling  
    vim.api.nvim_set_hl(0, "SnacksPickerPrompt", { bg = "NONE", fg = colors.fg })
    vim.api.nvim_set_hl(0, "SnacksPickerPromptPrefix", { bg = "NONE", fg = colors.function_name }) -- Green prompt indicator
    
    -- Picker content areas with default colors
    vim.api.nvim_set_hl(0, "SnacksPickerResults", { bg = "NONE", fg = colors.fg_alt }) -- Default text for file results
    vim.api.nvim_set_hl(0, "SnacksPickerResultsNormal", { bg = "NONE", fg = colors.fg_alt }) -- Default text for file results
    vim.api.nvim_set_hl(0, "SnacksPickerResultsText", { bg = "NONE", fg = colors.fg_alt }) -- Default text
    vim.api.nvim_set_hl(0, "SnacksPickerFile", { bg = "NONE", fg = colors.fg_alt }) -- Default text for files
    vim.api.nvim_set_hl(0, "SnacksPickerItem", { bg = "NONE", fg = colors.fg_alt }) -- Default text for items
    vim.api.nvim_set_hl(0, "SnacksPickerPreview", { bg = "NONE", fg = colors.fg_alt })
    vim.api.nvim_set_hl(0, "SnacksPickerPreviewNormal", { bg = "NONE", fg = colors.fg_alt })
    vim.api.nvim_set_hl(0, "SnacksPickerPreviewBorder", { bg = "NONE", fg = colors.parameter }) -- Purple preview border
    
    -- Selection with visual background (more subtle)
    vim.api.nvim_set_hl(0, "SnacksPickerSelection", { bg = colors.visual, fg = colors.fg })
    vim.api.nvim_set_hl(0, "SnacksPickerCursor", { bg = colors.visual, fg = colors.fg })
    vim.api.nvim_set_hl(0, "SnacksPickerCursorLine", { bg = colors.visual, fg = colors.fg })
    
    -- Highlighted matches in pink
    vim.api.nvim_set_hl(0, "SnacksPickerMatch", { bg = "NONE", fg = colors.keyword, bold = true })
    vim.api.nvim_set_hl(0, "SnacksPickerMatching", { bg = "NONE", fg = colors.keyword, bold = true })
    
    -- Multi-selection in green
    vim.api.nvim_set_hl(0, "SnacksPickerMulti", { bg = colors.function_name, fg = colors.bg })
    vim.api.nvim_set_hl(0, "SnacksPickerMultiSelection", { bg = colors.function_name, fg = colors.bg })

    -- Snacks Explorer with harmonious colors
    vim.api.nvim_set_hl(0, "SnacksExplorerNormal", { bg = "NONE", fg = colors.fg_alt })
    vim.api.nvim_set_hl(0, "SnacksExplorerBorder", { bg = "NONE", fg = colors.constant }) -- Consistent light blue
    vim.api.nvim_set_hl(0, "SnacksExplorerTitle", { bg = "NONE", fg = colors.type, bold = true }) -- Bright blue title
    
    -- File/folder styling
    vim.api.nvim_set_hl(0, "SnacksExplorerFile", { bg = "NONE", fg = colors.fg_alt })
    vim.api.nvim_set_hl(0, "SnacksExplorerDir", { bg = "NONE", fg = colors.function_name, bold = true }) -- Green directories
    vim.api.nvim_set_hl(0, "SnacksExplorerRoot", { bg = "NONE", fg = colors.keyword, bold = true }) -- Pink root
    
    -- Explorer selection with visual background
    vim.api.nvim_set_hl(0, "SnacksExplorerSelection", { bg = colors.visual, fg = colors.fg })
    vim.api.nvim_set_hl(0, "SnacksExplorerCursor", { bg = colors.visual, fg = colors.fg })
    vim.api.nvim_set_hl(0, "SnacksExplorerCursorLine", { bg = colors.visual, fg = colors.fg })
    
    -- Icons with appropriate colors
    vim.api.nvim_set_hl(0, "SnacksExplorerIcon", { bg = "NONE", fg = colors.parameter })
    vim.api.nvim_set_hl(0, "SnacksExplorerIconDir", { bg = "NONE", fg = colors.function_name })
    vim.api.nvim_set_hl(0, "SnacksExplorerIconFile", { bg = "NONE", fg = colors.constant })

    -- Git status using your defined git colors
    vim.api.nvim_set_hl(0, "SnacksExplorerGitAdd", { bg = "NONE", fg = colors.function_name }) -- Green
    vim.api.nvim_set_hl(0, "SnacksExplorerGitChange", { bg = "NONE", fg = colors.number }) -- Yellow
    vim.api.nvim_set_hl(0, "SnacksExplorerGitDelete", { bg = "NONE", fg = colors.cursor }) -- Red
    vim.api.nvim_set_hl(0, "SnacksExplorerGitIgnore", { bg = "NONE", fg = colors.fg_dark }) -- Dimmed

    -- Common highlights with consistent theming
    vim.api.nvim_set_hl(0, "SnacksNormal", { bg = "NONE", fg = colors.fg_alt }) -- Default text for general text
    vim.api.nvim_set_hl(0, "SnacksBorder", { bg = "NONE", fg = colors.constant })
    vim.api.nvim_set_hl(0, "SnacksTitle", { bg = "NONE", fg = colors.type, bold = true })
    
    -- Try alternative highlight group names
    vim.api.nvim_set_hl(0, "SnacksText", { bg = "NONE", fg = colors.fg_alt })
    vim.api.nvim_set_hl(0, "SnacksContent", { bg = "NONE", fg = colors.fg_alt })
  end,
}