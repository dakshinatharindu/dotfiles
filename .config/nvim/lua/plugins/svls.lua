return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "verilog" } },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        svls = {
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern(".git")(fname)
              or require("lspconfig.util").find_git_ancestor(fname)
          end,
          cmd = { "svls" },
          filetypes = { "verilog", "systemverilog" },
        },
      },
    },
  },
}
