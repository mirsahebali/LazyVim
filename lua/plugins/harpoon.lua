return {

  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  requires = { { "nvim-lua/plenary.nvim" } },
  config = function()
    local harpoon = require("harpoon")

    -- REQUIRED
    harpoon:setup()

    vim.keymap.set("n", "<leader>ha", function()
      harpoon:list():append()
    end, { desc = "Add file" })
    vim.keymap.set("n", "<leader>hg", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Toggle quick menu" })
  end,
}
