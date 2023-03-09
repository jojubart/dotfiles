vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- PRIMEAGEN REMAPS

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])


vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd> :terminal tmux new tmux-sessionizer<CR>")
vim.keymap.set("n", "<C-f>", "<cmd> :terminal tmux new tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
--vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

--vim.keymap.set("n", "<leader><leader>", function()
--    vim.cmd("so")
--end)
--
--


-- =============================================================================
-- # Keyboard shortcuts
-- =============================================================================
vim.keymap.set({"n", "v" }, "H", "^", {noremap=false})
vim.keymap.set({"n", "v"}, "L", "$", {noremap=true})


-- Left and right can switch buffers
vim.keymap.set("n", "<left>", ":bp<CR>")
vim.keymap.set("n", "<right>", ":bn<CR>")

-- Move by line
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- exit from terminal mode
--vim.keymap.set("t", "<esc>", "<C-\><C-N>")


-- Very magic by default
--vim.keymap.set("n", "?", "?\v")
--vim.keymap.set("n", "/", "/\v")
--vim.keymap.set("n", "%s/", "%sm/")

-- Quick-save
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- Improve Copy Paste Behavior
vim.keymap.set("n", "<leader>y", "*y")
vim.keymap.set("n", "<leader>Y", "+y")
vim.keymap.set("n", "<leader>p", "*p")
vim.keymap.set("n", "<leader>P", "+p")
