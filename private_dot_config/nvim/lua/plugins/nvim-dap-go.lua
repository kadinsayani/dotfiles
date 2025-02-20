return {
  "leoluz/nvim-dap-go",
  opts = {
    dap_configurations = {
      {
        type = "go",
        name = "Attach remote",
        mode = "remote",
        request = "attach",
      },
    },
  },
}
