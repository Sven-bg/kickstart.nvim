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
        auto_refresh = true, -- Automatically refresh status buffer
        -- To explicitly enable the diffview integration (good practice)
        integrations = {
          diffview = true,
          telescope = true,
        },
        commit_editor = {
          kind = 'split', -- Use split window for commit messages
          show_staged_diff = true, -- Show staged diff while committing
          staged_diff_split_kind = 'vsplit', -- Vertical split for diffs
          spell_check = true, -- Enable spell check in commit messages
        },
        status = {
          show_head_commit_hash = true,
          recent_commit_count = 10,
        },

        graph_style = 'unicode',
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
