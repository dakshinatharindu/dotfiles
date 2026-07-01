return {
  {
    "linux-cultist/venv-selector.nvim",
    opts = {
      search = {
        my_miniconda_base = {
          command = "fdfind '/python$' ~/apps/miniconda3/bin --full-path --color never",
          type = "anaconda",
        },
        my_miniconda_envs = {
          command = "fdfind 'bin/python$' ~/apps/miniconda3/envs --no-ignore-vcs --full-path --color never",
          type = "anaconda",
        },
      },
    },
  },
}
