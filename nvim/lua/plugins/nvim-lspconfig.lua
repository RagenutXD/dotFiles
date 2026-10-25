return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.config("clangd", {
      cmd = {
        "clangd",
        "--header-insertion=never",
        "--clang-tidy",
      },
    })

    vim.lsp.config("pyright", {
      settings = {
        python = {
          analysis = {
            extraPaths = {
              "./",
            },
          },
        },
      },
    })

    vim.lsp.config("tsc", {})

    vim.lsp.enable("tsc")
    vim.lsp.enable("clangd")
    vim.lsp.enable("pyright")

    vim.diagnostic.config({
      virtual_text = { prefix = "●" },
      signs = true,
      underline = true,
      update_in_insert = false,
      severity_sort = true,
    })
  end,
}
