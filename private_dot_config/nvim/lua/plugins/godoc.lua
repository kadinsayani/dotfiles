return {
  "fredrikaverpil/godoc.nvim",
  version = "*",
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter",
      opts = {
        ensure_installed = { "go" },
      },
    },
  },
  build = "go install github.com/lotusirous/gostdsym/stdsym@latest",
  cmd = { "GoDoc" },
  opts = {},
}
