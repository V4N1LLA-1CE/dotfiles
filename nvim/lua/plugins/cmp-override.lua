return {
  "hrsh7th/nvim-cmp",
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local has_words_before = function()
      unpack = unpack or table.unpack
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end
    local cmp = require("cmp")

    -- Define border style
    local border = {
      { "╭", "CmpBorder" },
      { "─", "CmpBorder" },
      { "╮", "CmpBorder" },
      { "│", "CmpBorder" },
      { "╯", "CmpBorder" },
      { "─", "CmpBorder" },
      { "╰", "CmpBorder" },
      { "│", "CmpBorder" },
    }

    -- Add this highlighting config
    vim.api.nvim_set_hl(0, "SnippetTabStop", { link = "CursorLine" })
    vim.api.nvim_set_hl(0, "CmpBorder", { fg = "#81A1C1" })

    -- Override window settings
    opts.window = {
      completion = {
        border = border,
        winhighlight = "Normal:Normal,NormalFloat:Normal,FloatBorder:CmpBorder,CursorLine:PmenuSel",
        winblend = 0,
      },
      documentation = {
        border = border,
        winhighlight = "Normal:Normal,NormalFloat:Normal,FloatBorder:CmpBorder",
        winblend = 0,
      },
    }

    opts.matching = {
      disallow_fuzzy_matching = false, -- Allow "ptr" matching "peter"
      disallow_partial_matching = false, -- Allow "mail" matching in "middleware"
      disallow_prefix_unmatching = false, -- Allow matches anywhere, not just word starts
      disallow_fullfuzzy_matching = false, -- Allow "mkr" matching "market" (any order)
      disallow_partial_fuzzy_matching = false, -- Allow fuzzy matching within parts of words
    }

    -- Keep existing mappings
    opts.mapping = vim.tbl_extend("force", opts.mapping, {
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif vim.snippet.active({ direction = 1 }) then
          vim.schedule(function()
            vim.snippet.jump(1)
          end)
        elseif has_words_before() then
          cmp.complete()
        else
          fallback()
        end
      end, { "i", "s" }),
      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif vim.snippet.active({ direction = -1 }) then
          vim.schedule(function()
            vim.snippet.jump(-1)
          end)
        else
          fallback()
        end
      end, { "i", "s" }),
    })

    return opts
  end,
}
