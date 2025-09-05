return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      go = { "goimports" },
      c = { "clang_format" },
      sh = { "shfmt" },
    },
    formatters = {
      clang_format = {
        prepend_args = { "--style=file", "--fallback-style=LLVM" },
      },
      shfmt = {
        prepend_args = { "-i", "2" },
      },
    },
  },
}
