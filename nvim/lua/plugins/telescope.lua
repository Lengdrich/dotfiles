local cmd = function(str)
  return '<cmd>' .. str .. '<CR>'
end

return {

  {
    "telescope.nvim",
    keys = function()
      return {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
        { '<Leader>a', cmd('Telescope app'), desc = 'Telescope app' },
        { '<Leader>j', cmd('Telescope buffers'), desc = 'Telescope buffers' },
        { '<Leader>fa', cmd('Telescope live_grep'), desc = 'Telescope live_grep' },
        { '<Leader>fs', cmd('Telescope grep_string') },

        { '<Leader>ff', cmd('Telescope find_files find_command=rg,--ignore,--hidden,--files  prompt_prefix=🔍') },
        { '<Leader>fg', cmd('Telescope git_files') },
        { '<Leader>fw', cmd('Telescope grep_string') },
        { '<Leader>fh', cmd('Telescope help_tags') },
        { '<Leader>fo', cmd('Telescope oldfiles') },
        { '<Leader>gc', cmd('Telescope git_commits') },
        { '<Leader>fd', cmd('Telescope dotfiles') },
      }
    end,
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  }

}
