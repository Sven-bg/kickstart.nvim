return {
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration
      -- Only one of these is needed.
      'nvim-telescope/telescope.nvim', -- optional
    },

    -- THIS IS THE KEY CHANGE:
    -- Replace 'config = true' with this function
    config = function()
      local neogit = require 'neogit'
      neogit.setup {
        -- Add ONLY the settings you want to change from the default here
        -- For example, to open Neogit in a floating window by default:
        -- kind = 'floating',

        -- To hide the hints at the top of the status buffer
        -- disable_hint = true,

        -- To explicitly enable the diffview integration (good practice)
        integrations = {
          diffview = true,
        },

        -- You can add any other option from the documentation here.
        -- For example:
        -- sections = {
        --   untracked = { folded = true }
        -- }
      }
    end,
    cmd = 'Neogit',
    keys = {
      { '<leader>g', '<cmd>Neogit<CR>', desc = 'Open Neogit' },
    },
  },
}
