require 'paq' {
	'savq/paq-nvim',
	-- lualine
	'nvim-tree/nvim-web-devicons',
	'nvim-lualine/lualine.nvim',
	-- treesitter
	'nvim-treesitter/nvim-treesitter-textobjects',
	'nvim-treesitter/nvim-treesitter',
}
vim.cmd('PaqSync')                    -- run on config change

require('lualine').setup()            -- powerline alike
                                      -- @see https://github.com/ryanoasis/nerd-fonts/releases
require('nvim-treesitter').setup {    -- syntax highlighting, code completion
	ensure_installed = {'all'},
	sync_install     = true,
	auto_install     = true,
}

-- colour scheme
vim.g.codedark_transparent = 1        -- transparent background
vim.cmd('colorscheme vim-code-dark')  -- activate

-- override nvim defaults
vim.o.termguicolors = true            -- use 24 bit colours
vim.o.mouse = ''                      -- leave the mouse to the TE
vim.cmd('nnoremap Y yy')              -- vim-like Y
vim.o.hlsearch = true                 -- highlight search results
vim.o.colorcolumn = '64,72,80,120'    -- highlight columns
vim.o.listchars = 'tab:▷ ◁,trail:□'   -- display tabs and trailing space
vim.o.list = true                     -- ... enable
