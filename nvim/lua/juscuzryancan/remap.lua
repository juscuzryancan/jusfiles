local nnoremap = require("juscuzryancan.keymap").nnoremap

-- remap for netrw
nnoremap("<leader>pv", "<cmd>Ex<CR>")

--
nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr>")