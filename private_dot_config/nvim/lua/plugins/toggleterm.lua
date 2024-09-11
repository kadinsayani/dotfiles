return {
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<c-\>]],
        shade_terminals = false,
        shell = "zsh --login",
      })
    end,
    keys = {
      { [[<C-\>]] },
      { "<leader>0", "<Cmd>2ToggleTerm<Cr>", desc = "Terminal" },
      {
        "<leader>td",
        "<cmd>ToggleTerm size=40 dir=~/ direction=horizontal<cr>",
        desc = "Open a horizontal terminal at the Desktop directory",
      },
    },
  },
}
