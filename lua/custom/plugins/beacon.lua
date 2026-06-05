return {
  'DanilaMihailov/beacon.nvim',
  -- 💡 Set to 'VeryLazy' to load the plugin right after Neovim starts,
  -- but before you interact with the buffer, ensuring a fast startup.
  event = 'VeryLazy',

  -- The config function is called when the plugin is loaded
  config = function()
    require('beacon').setup {
      enabled = true, --- (boolean | fun():boolean) check if enabled
      speed = 1, --- integer speed at wich animation goes
      width = 40, --- integer width of the beacon window
      winblend = 70, --- integer starting transparency of beacon window :h winblend
      fps = 60, --- integer how smooth the animation going to be

      min_jump = 10, --- integer what is considered a jump. Number of lines
      cursor_events = { 'CursorMoved' }, -- table<string> what events trigger check for cursor moves
      window_events = { 'WinEnter', 'FocusGained' }, -- table<string> what events trigger cursor highlight
      highlight = { bg = 'white', ctermbg = 15 }, -- vim.api.keyset.highlight table passed to vim.api.nvim_set_hl
      beacon = '', -- The character to use as the beacon (requires Nerd Font)
    }
  end,
}
