-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
        { "folke/tokyonight.nvim", config = function() vim.cmd.colorscheme "tokyonight" end},
        { "nvim-tree/nvim-web-devicons", opts = {} },
        {
            'nvim-mini/mini.pairs',
            version = false,
            config = function()
              local pairs = require"mini.pairs"
              pairs.setup()
            end
        },
        {
            'nvim-mini/mini.statusline',
            version = false,
            config = function()
              local status_line = require"mini.statusline"
              status_line.setup()
            end
        },

        {
            'nvim-mini/mini.comment',
            version = false,
            config = function()
              local comment = require"mini.comment"
              comment.setup()
            end
        },
        { import = "config.plugins" }
    },
})
