return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness
    local builtin = require('telescope.builtin')

    keymap.set('n', '<leader>ff', builtin.find_files, {desc = "Fuzzy find files in cwd"})
    keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "Finds strings in cwd"})
    keymap.set('n', '<leader>fb', builtin.buffers, {desc = "Finds current buffers"})
    keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "Finds help tags for plugins"})
    keymap.set('n', '<leader>fr', builtin.oldfiles, {desc = "Finds recent opened files"})
    keymap.set('n', '<leader>fc', builtin.grep_string, {desc = "Find string under cursor in cwd"})
  end,
}
