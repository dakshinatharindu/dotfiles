return {
  -- Add SystemVerilog to Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "verilog" })
      end
    end,
  },
  -- Configure LSPs
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        verible = {}, -- Linting & Formatting
        svlangserver = {}, -- Completion & Definition
      },
    },
  },
}
