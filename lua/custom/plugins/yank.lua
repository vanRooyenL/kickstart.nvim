return {
  'ojroques/vim-oscyank',
  lazy = true,
  -- Load the plugin when using yank commands
  event = 'TextYankPost',
  config = function()
    -- Map the OSCYank command to copy after every yank
    vim.api.nvim_create_autocmd('TextYankPost', {
      pattern = '*',
      callback = function()
        if vim.v.event.operator == 'y' and vim.v.event.regname == '' then
          vim.cmd 'OSCYankReg "'
        end
      end,
      desc = 'Copy to system clipboard when yanking',
    })

    -- Additional configuration options
    vim.g.oscyank_term = 'default' -- or 'tmux', 'screen', 'kitty'
    vim.g.oscyank_max_length = 1000000 -- maximum length of copied text

    -- Optional: Map a specific key combination to force OSC yank
    vim.keymap.set('n', '<leader>y', '<cmd>OSCYankReg "<CR>', { desc = 'Yank to system clipboard' })
    vim.keymap.set('v', '<leader>y', '<cmd>OSCYank<CR>', { desc = 'Yank selection to system clipboard' })
  end,
}
