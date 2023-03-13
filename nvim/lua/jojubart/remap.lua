vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- PRIMEAGEN REMAPS
vim.keymap.set('c', '<tab>', '<C-z>', { silent = false })



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
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
--vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

--vim.keymap.set("n", "<leader><leader>", function()
--    vim.cmd("so")
--end)
--
--
vim.keymap.set("n", "<leader>q", function()
    --Exit from terminal mode
    vim.cmd("tnoremap <esc> <C-\\><C-n>")
end)

-- remap netest: test this file only (not the whole suite) in command mode
-- lua require("neotest").run.run(vim.fn.expand("%"))
vim.keymap.set("n", "<leader>nt", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>")
vim.keymap.set("n", "<leader>nta", "<cmd>lua require('neotest').run.run()<CR>")
vim.keymap.set("n", "<leader>ntx", "<cmd>lua require('neotest').run.stop()<CR>")
vim.keymap.set("n", "<leader>nts", "<cmd>lua require('neotest').summary.open()<CR>")
vim.keymap.set("n", "<leader>ntc", "<cmd>lua require('neotest').summary.close()<CR>")
vim.keymap.set("n", "<leader>nto", "<cmd>lua require('neotest').output.open({ enter = true })<CR>")
vim.keymap.set("n", "<leader>ntp", "<cmd>  lua require('neotest').output_panel.open()<CR>")


-- shortcut to run pytest OPEN_FILE
vim.keymap.set("n", "<leader>pt", "<cmd>:term pytest %<CR>")





-- =============================================================================
-- # Keyboard shortcuts
-- =============================================================================
vim.keymap.set({"n", "v", "o" }, "H", "^", {noremap=false})
vim.keymap.set({"n", "v", "o"}, "L", "$", {noremap=true})

-- Left and right can switch buffers
vim.keymap.set("n", "<left>", ":bp<CR>")
vim.keymap.set("n", "<right>", ":bn<CR>")

-- Move by line
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- go to next method
vim.keymap.set("n", "[[" , "[m")
vim.keymap.set("n", "]]" , "]m")

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
--vim.keymap.set("n", "<leader>p", "*p")
vim.keymap.set("n", "<leader>P", "+p")
