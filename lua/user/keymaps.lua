-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set('n', '<leader>pv', vim.cmd.Oil)

-- [[ Quality of life ]]
-- Center screen when jumping around
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')
-- Stay in indent mode when indenting
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })
vim.keymap.set("v", "=", "=gv", { noremap = true, silent = true })
-- Don't replace the register when pasting
vim.keymap.set("x", "p", [["_dP]])
-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Window management ]]
vim.keymap.set("n", "<C-h>", "<C-w>h", { silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { silent = true })

-- [[ Buffer management ]]
vim.keymap.set("n", "<S-h>", "<cmd>bp<CR>", { silent = true })
vim.keymap.set("n", "<S-l>", "<cmd>bn<CR>", { silent = true })
vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { silent = true })
vim.keymap.set("n", "<leader>bo", function ()
    local current_buf=vim.api.nvim_get_current_buf()
    for _,i in ipairs(vim.api.nvim_list_bufs()) do
        if i~=current_buf then
            vim.api.nvim_buf_delete(i,{})
        end
    end
end)

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Code action keymaps
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format)
