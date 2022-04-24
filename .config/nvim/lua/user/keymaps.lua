local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
-- OLD Way to remap!
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)

-- New way to remap!!!
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- NVim-Telescope 
keymap("n", "<A-g>", ":Telescope grep_string<CR>", opts)
keymap("n", "<A-f>", ":Telescope find_files<CR>", opts)
keymap("n", "<A-b>", ":Telescope buffers<CR>", opts)
keymap("n", "<A-h>", ":Telescope help_tags<CR>", opts)

-- Nvim-DAP -- Debug Adapter Protocol
-- keymap("n", "<F8>", ":lua require('dap').run_last()<CR>", opts)
-- keymap("n", "<F9>", ":lua require('dap').repl.open({}, 'vsplit')<CR><C-w>v", opts)
-- keymap("n", "<C-j>", ":lua require('dap').step_over()<CR>", opts)
-- keymap("n", "<C-l>", ":lua require('dap').step_into()<CR>", opts)
-- keymap("n", "<C-k>", ":lua require('dap').step_out()<CR>", opts)
keymap("n", "<Space>dn", ":lua require('dap').continue()<CR>", opts)
keymap("n", "<Space>db", ":lua require('dap').toggle_breakpoint()<CR>", opts)
keymap("n", "<Space>dk", ":lua require('dap').up()<CR>", opts)
keymap("n", "<Space>dj", ":lua require('dap').down()<CR>", opts)

keymap("n", "<Space>di", ":lua require('dap.ui.widgets').hover()<CR>", opts)
keymap("n", "<Space>ds", ":lua local widgets=require('dap.ui.widgets');widgets.centered_float(widgets.scopes)<CR>", opts)
-- keymap("n", "<F5>", ":lua require('debugHelper').attach()<CR>", opts)
-- keymap("n", "<F5>", ":lua require('dap').debugHelper.attach()<CR>", opts)

-- Vim-bbye --
keymap("n", "<C-q>", ":Bdelete<CR>", opts) -- closes current buffer
keymap("n", "<C-e>", ":Bwipeout<CR>", opts) -- closes wipesout buffer

-- Here are General Purpose Keymaps (try to set up keymaps that are convention with other programs)
-- NvimTreeToggle
keymap("n", "<C-b>", ":NvimTreeToggle<CR>", opts) -- closes wipesout buffer
-- Comment
-- The design of vim recognizes <C-/> as <C-_> !!!
keymap("n", "<C-_>", ":normal gcc<CR>", opts )
-- keymap("v", "<C-_>", ":normal gb<CR>", opts )

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

