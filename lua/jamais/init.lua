local utils = require 'jamais.utils'
local theme = require 'jamais.highlight'

vim.o.termguicolors = true
vim.g.colors_name = "jamais"

utils.load(theme)