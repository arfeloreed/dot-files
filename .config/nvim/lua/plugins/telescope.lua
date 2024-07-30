return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    {"nvim-telescope/telescope-fzf-native.nvim", build = "make"}
  },
  config = function()
    -- telescope setup
    local builtin = require('telescope.builtin')
    require('telescope').load_extension('fzf')

    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
  end,
}
