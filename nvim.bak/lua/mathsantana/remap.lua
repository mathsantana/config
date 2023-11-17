vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("x", "<C-p>", "\"_dP")

vim.keymap.set("n", "<C-PageUp>", "gT")
vim.keymap.set("n", "<C-PageDown>", "gt")

vim.keymap.set('t', '<C-n>', "<C-\\><C-n>",{silent = true}) -- Exit terminal mode
vim.keymap.set('t', '<Esc>', "<C-\\><C-n>",{silent = true}) -- Exit terminal mode

vim.keymap.set('n', '<M-1>', "<cmd>ToggleTerm direction=horizontal<cr>")
vim.keymap.set('n', '<M-2>', "<cmd>ToggleTerm direction=float<cr>")
vim.keymap.set('n', '<M-3>', "<cmd>ToggleTerm direction=vertical<cr>")

vim.keymap.set('n', '<leader>bs', function ()
    vim.print(vim.cmd("buffers"))
    vim.ui.input({prompt = "Select a buffer: "}, function (input)
        if input ~= nil then vim.cmd("b" .. input) end
    end)
end)


vim.keymap.set('n', '<leader>cfg', function ()
    vim.cmd("e $HOME/.config/nvim")
end)
