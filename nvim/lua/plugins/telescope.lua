return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader><space>",
      function()
        require("telescope.builtin").find_files()
      end,
      mode = "n",
      desc = "Find Files (Root Dir)",
    },
    {
      "<leader>/",
      function()
        require("telescope.builtin").live_grep()
      end,
      mode = "n",
      desc = "Find Files (Root Dir)",
    },
    {
      "<leader>bb",
      function()
        require("telescope.builtin").buffers()
      end,
      mode = "n",
      desc = "Find open Buffers",
    },
  },
}
