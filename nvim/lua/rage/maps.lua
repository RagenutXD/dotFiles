---- ---- ---- ---- 


local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end


-- File
map("n", "<leader>pv", "<CMD>Oil<CR>")

-- New Windows
map("n", "<leader>oo", "<CMD>vsplit<CR>")
map("n", "<leader>op", "<CMD>split<CR>")

-- Window Navigation
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Tab Navigation
map("n", "<S-h>", "gT")
map("n", "<S-l>", "gt")
map("n", "<leader>tt", "<CMD>tabnew %<CR>")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")

-- Whole File
map("n", "die", "<CMD>%d<CR>")
map("n", "yie", "<CMD>%y<CR>")
map("n", "vie", "<CMD>%v<CR>")


map("n", "<leader><Esc>", "<CMD>noh<CR>")

map("n", "<leader>nf", function()
  local dir = vim.fn.expand("%:p:h")
  local filename = vim.fn.input("New file: ")

  if filename == "" then
    return
  end

  vim.cmd("edit " .. vim.fn.fnameescape(dir .. "/" .. filename))
end, { desc = "New file in current directory" })

map("t", "<Esc>", "<CMD>stopinsert<CR>")

local t_builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', t_builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', t_builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', t_builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', t_builtin.help_tags, { desc = 'Telescope help tags' })


map('n', '<leader>rr', ':RunCode<CR>')
map('n', '<leader>rf', ':RunFile<CR>')
map('n', '<leader>rft', ':RunFile tab<CR>')
map('n', '<leader>rp', ':RunProject<CR>')
map('n', '<leader>rc', ':RunClose<CR>')
map('n', '<leader>crf', ':CRFiletype<CR>')
map('n', '<leader>crp', ':CRProjects<CR>')
