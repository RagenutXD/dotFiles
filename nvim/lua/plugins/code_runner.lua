return {
  "CRAG666/code_runner.nvim",
  cmd = { "RunCode", "RunFile", "RunProject", "RunClose", "CRFiletype", "CRProjects" },
  --keys = { "<leader>r" }, -- add the mappings you use
  opts = {
    -- your config (mode, filetype, ...) goes here
    filetype_path = vim.fn.expand('~/.config/nvim/code_runner.json'),
    mode = "term",
    float ={
        border = "double"
    }
  },
}
