return {
  -- add gruvbox
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- Set the background to hard
      vim.g.gruvbox_material_background = "hard"
      -- Optional: Enable better performance
      vim.g.gruvbox_material_better_performance = 1
      -- Optional: Disable italic comments if you prefer
      -- vim.g.gruvbox_material_disable_italic_comment = 1
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
