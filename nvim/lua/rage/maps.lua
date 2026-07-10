

---- ---- ---- ---- 


local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end


-- File
map("n", "<leader>pv", "<CMD>Ex<CR>")

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

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")

-- Whole File
map("n", "die", "<CMD>%d<CR>")
map("n", "yie", "<CMD>%y<CR>")
map("n", "vie", "<CMD>%v<CR>")

-- Quick Line Move
map("n", "<A-Down>", "dd<bar>p")
map("n", "<A-Up>", "dd<bar>2k<bar>p")

map("n", "<leader><Esc>", "<CMD>noh<CR>")

map("n", "<leader>nf", function()
   vim.ui.input({ prompt = 'Enter filename: ' }, function(filename)
        if filename == nil then
            print("Input cancelled")
        else
            print(string.format("Successfully made file %s", filename))
            vim.cmd(string.format("tabnew %s", filename))
        end
    end)

end)

map("t", "<Esc>", "<CMD>stopinsert<CR>")
