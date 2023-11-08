return {
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/notes",
                rice = "~/notes/rice",
                focace = "~/notes/arch/focace",
                sdd = "~/notes/arch/simpleDropDown",
                sf = "~/notes/challengers/syncFile",
              },
            },
          },
        },
      })
    end,
  },
}
