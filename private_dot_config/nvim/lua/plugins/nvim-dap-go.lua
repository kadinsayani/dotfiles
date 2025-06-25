return {
  "leoluz/nvim-dap-go",
  opts = {
    dap_configurations = {
      {
        type = "go",
        name = "Attach remote",
        mode = "remote",
        request = "attach",
        port = 2345,
        host = "127.0.0.1",
      },
    },
  },
}
