return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000 ,
    opts = {
        flavour =  "frappe"
    },
    config = function()
        require("catppuccin").setup()

        -- setup must be called before loading
        vim.cmd.colorscheme "catppuccin-macchiato"
      end,
}
