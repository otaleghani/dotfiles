return {
  'echasnovski/mini.files',
  version = false,
  opts = {
    widows = {
      preview = true,
      window_focus = 30,
      window_preview = 30,
    },
    options = {
      use_as_default_explorer = true,
    },
  },
  keys = {
    {
      "<leader>fm",
      function()
        require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
      end,
      desc = "Open mini.files in current directory",
    },
  },
}
