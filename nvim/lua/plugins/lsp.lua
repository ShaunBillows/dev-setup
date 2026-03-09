return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "vue",
          },
          settings = {
            vtsls = {
              tsserver = {
                globalPlugins = {
                  {
                    name = "@vue/typescript-plugin",
                    location = require("mason-registry").get_package("vue-language-server"):get_install_path()
                      .. "/node_modules/@vue/language-server",
                    languages = { "vue" },
                  },
                },
              },
            },
          },
        },
        volar = false, -- Disable standalone Volar
      },
    },
  },
}
