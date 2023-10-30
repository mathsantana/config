vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("x", "<C-p>", "\"_dP")

vim.keymap.set("n", "<C-PageUp>", "gT")
vim.keymap.set("n", "<C-PageDown>", "gt")

vim.keymap.set('t', '<C-n>', "<C-\\><C-n>",{silent = true}) -- Exit terminal mode

vim.keymap.set('n', '<leader>cfg', function ()
    vim.cmd("e $HOME/.config/nvim")
end)
