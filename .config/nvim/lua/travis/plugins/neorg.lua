return { "nvim-neorg/neorg",
      config = function()
        require("neorg").setup {
          load = {
            ["core.defaults"] = {},
            ["core.concealer"] = {},
            ["core.dirman"] = {
              config = {
                workspaces = {
                  notes = "~/Notes",
                },
                default_workspace = "notes",
              },
            },
          },
        }
        vim.wo.foldlevel = 99
        vim.wo.conceallevel = 2
      end,
}
