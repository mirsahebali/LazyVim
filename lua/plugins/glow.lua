return {
  {
    "ellisonleao/glow.nvim",
    config = function()
      require("glow").setup({
        install_path = "/usr/local/bin",
      })
    end,
    cmd = "Glow",
  },
}
