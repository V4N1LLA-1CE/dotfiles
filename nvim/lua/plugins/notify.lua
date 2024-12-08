return {
  "rcarriga/nvim-notify",
  priority = 1000,
  event = "VeryLazy",
  config = function()
    local notify = require("notify")

    -- Configure notify
    notify.setup({
      -- Animation style (see :help notify-config-stages)
      stages = "fade_in_slide_out",

      -- Default timeout for notifications
      timeout = 3000,

      -- For stages that change opacity, this is treated as the highlight behind the window
      background_colour = "#000000",

      -- Minimum width for notification windows
      minimum_width = 50,

      -- Icons for the different levels
      icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = "✎",
      },

      -- Render style
      render = "default",

      -- Max number of notifications to show at once
      max_width = nil,
      max_height = nil,

      -- Set timeouts per urgency level
      level_timeout = {
        error = 5000,
        warn = 4000,
        info = 3000,
        debug = 2000,
        trace = 1000,
      },
    })

    -- Set as default notification system
    vim.notify = notify

    -- Create some convenience commands
    vim.api.nvim_create_user_command("NotifyDismiss", function()
      notify.dismiss()
    end, {})

    -- Optional: Example keymaps
    local keymap = vim.keymap.set
    keymap("n", "<leader>nd", ":NotifyDismiss<CR>", { desc = "Dismiss notifications" })

    -- Example usage functions
    _G.notify_test = function()
      vim.notify("Test notification", "info", {
        title = "Test",
        timeout = 2000,
      })
    end

    -- Create command to test notifications
    vim.api.nvim_create_user_command("NotifyTest", function()
      _G.notify_test()
    end, {})
  end,
}
